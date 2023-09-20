unit Model.ERP.fornecedor_pedido_compra;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfornecedorpedidocompra = class(TModelBase)

private
    Fid : Integer;
    Fid_fornecedor : Integer;
    Fid_produto : Integer;
    Fcodigo_fabricante : WideString;
    Fpreco_compra : Double;
    Fpreco_custo : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setcodigo_fabricante(const Value: WideString);
    procedure Setpreco_compra(const Value: Double);
    procedure Setpreco_custo(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property codigo_fabricante     : WideString read Fcodigo_fabricante write Setcodigo_fabricante;
    property preco_compra     : Double read Fpreco_compra write Setpreco_compra;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfornecedorpedidocompra.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfornecedorpedidocompra) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfornecedorpedidocompra(Model).id;
Self.Fid_fornecedor         := TModelERPfornecedorpedidocompra(Model).id_fornecedor;
Self.Fid_produto         := TModelERPfornecedorpedidocompra(Model).id_produto;
Self.Fcodigo_fabricante         := TModelERPfornecedorpedidocompra(Model).codigo_fabricante;
Self.Fpreco_compra         := TModelERPfornecedorpedidocompra(Model).preco_compra;
Self.Fpreco_custo         := TModelERPfornecedorpedidocompra(Model).preco_custo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfornecedorpedidocompra.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfornecedorpedidocompra.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfornecedorpedidocompra.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfornecedorpedidocompra.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPfornecedorpedidocompra.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPfornecedorpedidocompra.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPfornecedorpedidocompra.Setpreco_compra(const Value: Boolean);   
begin                
  Fpreco_compra := Value;   
end;                 

procedure TModelERPfornecedorpedidocompra.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 


end.
