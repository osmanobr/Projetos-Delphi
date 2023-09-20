unit Model.ERP.compra_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcompraitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_compra : Integer;
    Fid_produto : Integer;
    Fquantidade : Double;
    Fpreco_venda : Double;
    Fpreco_custo : Double;
    Fmetro_cubico : Double;
    Fid_produto_pai : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setmetro_cubico(const Value: Double);
    procedure Setid_produto_pai(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property metro_cubico     : Double read Fmetro_cubico write Setmetro_cubico;
    property id_produto_pai     : Integer read Fid_produto_pai write Setid_produto_pai;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcompraitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcompraitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcompraitem(Model).id;
Self.Fid_empresa         := TModelERPcompraitem(Model).id_empresa;
Self.Fid_compra         := TModelERPcompraitem(Model).id_compra;
Self.Fid_produto         := TModelERPcompraitem(Model).id_produto;
Self.Fquantidade         := TModelERPcompraitem(Model).quantidade;
Self.Fpreco_venda         := TModelERPcompraitem(Model).preco_venda;
Self.Fpreco_custo         := TModelERPcompraitem(Model).preco_custo;
Self.Fmetro_cubico         := TModelERPcompraitem(Model).metro_cubico;
Self.Fid_produto_pai         := TModelERPcompraitem(Model).id_produto_pai;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcompraitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcompraitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcompraitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcompraitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcompraitem.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPcompraitem.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcompraitem.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcompraitem.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPcompraitem.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPcompraitem.Setmetro_cubico(const Value: Boolean);   
begin                
  Fmetro_cubico := Value;   
end;                 

procedure TModelERPcompraitem.Setid_produto_pai(const Value: Boolean);   
begin                
  Fid_produto_pai := Value;   
end;                 


end.
