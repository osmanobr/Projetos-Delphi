unit Model.ERP.inventarios;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPinventarios = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Fnome : WideString;
    Ftipo : WideString;
    Fvalor : Double;
    Fpreco_venda : Double;
    Fpreco_calculado : Double;
    Fespessura : Double;
    Flargura : Double;
    Fcomprimento : Double;
    Fmetro_cubico : Double;
    Fclick : Boolean;
    Fvasilhame : Boolean;
    Fkit_compra : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_calculado(const Value: Double);
    procedure Setespessura(const Value: Double);
    procedure Setlargura(const Value: Double);
    procedure Setcomprimento(const Value: Double);
    procedure Setmetro_cubico(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setvasilhame(const Value: Boolean);
    procedure Setkit_compra(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome     : WideString read Fnome write Setnome;
    property tipo     : WideString read Ftipo write Settipo;
    property valor     : Double read Fvalor write Setvalor;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_calculado     : Double read Fpreco_calculado write Setpreco_calculado;
    property espessura     : Double read Fespessura write Setespessura;
    property largura     : Double read Flargura write Setlargura;
    property comprimento     : Double read Fcomprimento write Setcomprimento;
    property metro_cubico     : Double read Fmetro_cubico write Setmetro_cubico;
    property click     : Boolean read Fclick write Setclick;
    property vasilhame     : Boolean read Fvasilhame write Setvasilhame;
    property kit_compra     : Boolean read Fkit_compra write Setkit_compra;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPinventarios.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPinventarios) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPinventarios(Model).id;
Self.Fid_produto         := TModelERPinventarios(Model).id_produto;
Self.Fnome         := TModelERPinventarios(Model).nome;
Self.Ftipo         := TModelERPinventarios(Model).tipo;
Self.Fvalor         := TModelERPinventarios(Model).valor;
Self.Fpreco_venda         := TModelERPinventarios(Model).preco_venda;
Self.Fpreco_calculado         := TModelERPinventarios(Model).preco_calculado;
Self.Fespessura         := TModelERPinventarios(Model).espessura;
Self.Flargura         := TModelERPinventarios(Model).largura;
Self.Fcomprimento         := TModelERPinventarios(Model).comprimento;
Self.Fmetro_cubico         := TModelERPinventarios(Model).metro_cubico;
Self.Fclick         := TModelERPinventarios(Model).click;
Self.Fvasilhame         := TModelERPinventarios(Model).vasilhame;
Self.Fkit_compra         := TModelERPinventarios(Model).kit_compra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPinventarios.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPinventarios.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPinventarios.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPinventarios.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPinventarios.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPinventarios.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPinventarios.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPinventarios.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPinventarios.Setpreco_calculado(const Value: Boolean);   
begin                
  Fpreco_calculado := Value;   
end;                 

procedure TModelERPinventarios.Setespessura(const Value: Boolean);   
begin                
  Fespessura := Value;   
end;                 

procedure TModelERPinventarios.Setlargura(const Value: Boolean);   
begin                
  Flargura := Value;   
end;                 

procedure TModelERPinventarios.Setcomprimento(const Value: Boolean);   
begin                
  Fcomprimento := Value;   
end;                 

procedure TModelERPinventarios.Setmetro_cubico(const Value: Boolean);   
begin                
  Fmetro_cubico := Value;   
end;                 

procedure TModelERPinventarios.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPinventarios.Setvasilhame(const Value: Boolean);   
begin                
  Fvasilhame := Value;   
end;                 

procedure TModelERPinventarios.Setkit_compra(const Value: Boolean);   
begin                
  Fkit_compra := Value;   
end;                 


end.
