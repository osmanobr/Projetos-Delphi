unit Model.ERP.pagar_excluidos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpagarexcluidos = class(TModelBase)

private
    Fiditem : Integer;
    Fnumeropedido : Integer;
    Fnumero : Integer;
    Fseq : Integer;
    Fproduto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fvalor : Double;
    Fvalorunitario : Double;
    Ftotal : Double;
    Fclick : Boolean;
    Fvl_desconto : Double;

    procedure Setiditem(const Value: Integer);
    procedure Setnumeropedido(const Value: Integer);
    procedure Setnumero(const Value: Integer);
    procedure Setseq(const Value: Integer);
    procedure Setproduto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Setvalorunitario(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setvl_desconto(const Value: Double);

public
    property iditem     : Integer read Fiditem write Setiditem;
    property numeropedido     : Integer read Fnumeropedido write Setnumeropedido;
    property numero     : Integer read Fnumero write Setnumero;
    property seq     : Integer read Fseq write Setseq;
    property produto     : Integer read Fproduto write Setproduto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor     : Double read Fvalor write Setvalor;
    property valorunitario     : Double read Fvalorunitario write Setvalorunitario;
    property total     : Double read Ftotal write Settotal;
    property click     : Boolean read Fclick write Setclick;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpagarexcluidos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpagarexcluidos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fiditem         := TModelERPpagarexcluidos(Model).iditem;
Self.Fnumeropedido         := TModelERPpagarexcluidos(Model).numeropedido;
Self.Fnumero         := TModelERPpagarexcluidos(Model).numero;
Self.Fseq         := TModelERPpagarexcluidos(Model).seq;
Self.Fproduto         := TModelERPpagarexcluidos(Model).produto;
Self.Fnome_produto         := TModelERPpagarexcluidos(Model).nome_produto;
Self.Fquantidade         := TModelERPpagarexcluidos(Model).quantidade;
Self.Fvalor         := TModelERPpagarexcluidos(Model).valor;
Self.Fvalorunitario         := TModelERPpagarexcluidos(Model).valorunitario;
Self.Ftotal         := TModelERPpagarexcluidos(Model).total;
Self.Fclick         := TModelERPpagarexcluidos(Model).click;
Self.Fvl_desconto         := TModelERPpagarexcluidos(Model).vl_desconto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpagarexcluidos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpagarexcluidos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpagarexcluidos.Setiditem(const Value: Boolean);   
begin                
  Fiditem := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setnumeropedido(const Value: Boolean);   
begin                
  Fnumeropedido := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setseq(const Value: Boolean);   
begin                
  Fseq := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setvalorunitario(const Value: Boolean);   
begin                
  Fvalorunitario := Value;   
end;                 

procedure TModelERPpagarexcluidos.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPpagarexcluidos.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 


end.
