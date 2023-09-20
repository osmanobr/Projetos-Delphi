unit Model.ERP.pedido_compra_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidocompraitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fclick : Boolean;
    Ftipoplano : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Settipoplano(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property click     : Boolean read Fclick write Setclick;
    property tipoplano     : indefinido read Ftipoplano write Settipoplano;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidocompraitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidocompraitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidocompraitem(Model).id;
Self.Fid_empresa         := TModelERPpedidocompraitem(Model).id_empresa;
Self.Fnome         := TModelERPpedidocompraitem(Model).nome;
Self.Fclick         := TModelERPpedidocompraitem(Model).click;
Self.Ftipoplano         := TModelERPpedidocompraitem(Model).tipoplano;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidocompraitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidocompraitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidocompraitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidocompraitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpedidocompraitem.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPpedidocompraitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPpedidocompraitem.Settipoplano(const Value: Boolean);   
begin                
  Ftipoplano := Value;   
end;                 


end.
