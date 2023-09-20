unit Model.ERP.estimativa_obra;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestimativaobra = class(TModelBase)

private
    Fid : Integer;
    Fid_estimativa_obra : Integer;
    Fid_pedido_alm : Integer;
    Fid_venda : Integer;
    Fdata_pedido_alm : indefinido;
    Fdata_venda : indefinido;
    Fcancelado : Boolean;
    Ffechado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_estimativa_obra(const Value: Integer);
    procedure Setid_pedido_alm(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setdata_pedido_alm(const Value: indefinido);
    procedure Setdata_venda(const Value: indefinido);
    procedure Setcancelado(const Value: Boolean);
    procedure Setfechado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_estimativa_obra     : Integer read Fid_estimativa_obra write Setid_estimativa_obra;
    property id_pedido_alm     : Integer read Fid_pedido_alm write Setid_pedido_alm;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property data_pedido_alm     : indefinido read Fdata_pedido_alm write Setdata_pedido_alm;
    property data_venda     : indefinido read Fdata_venda write Setdata_venda;
    property cancelado     : Boolean read Fcancelado write Setcancelado;
    property fechado     : Boolean read Ffechado write Setfechado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestimativaobra.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestimativaobra) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestimativaobra(Model).id;
Self.Fid_estimativa_obra         := TModelERPestimativaobra(Model).id_estimativa_obra;
Self.Fid_pedido_alm         := TModelERPestimativaobra(Model).id_pedido_alm;
Self.Fid_venda         := TModelERPestimativaobra(Model).id_venda;
Self.Fdata_pedido_alm         := TModelERPestimativaobra(Model).data_pedido_alm;
Self.Fdata_venda         := TModelERPestimativaobra(Model).data_venda;
Self.Fcancelado         := TModelERPestimativaobra(Model).cancelado;
Self.Ffechado         := TModelERPestimativaobra(Model).fechado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestimativaobra.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestimativaobra.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestimativaobra.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestimativaobra.Setid_estimativa_obra(const Value: Boolean);   
begin                
  Fid_estimativa_obra := Value;   
end;                 

procedure TModelERPestimativaobra.Setid_pedido_alm(const Value: Boolean);   
begin                
  Fid_pedido_alm := Value;   
end;                 

procedure TModelERPestimativaobra.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPestimativaobra.Setdata_pedido_alm(const Value: Boolean);   
begin                
  Fdata_pedido_alm := Value;   
end;                 

procedure TModelERPestimativaobra.Setdata_venda(const Value: Boolean);   
begin                
  Fdata_venda := Value;   
end;                 

procedure TModelERPestimativaobra.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 

procedure TModelERPestimativaobra.Setfechado(const Value: Boolean);   
begin                
  Ffechado := Value;   
end;                 


end.
