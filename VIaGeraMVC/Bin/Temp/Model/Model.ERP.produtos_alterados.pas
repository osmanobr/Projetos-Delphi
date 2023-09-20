unit Model.ERP.produtos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutos = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Falterado : indefinido;
    Fpreco_anterior : Double;
    Fpreco_venda : Double;
    Fcarga : Boolean;
    Fmotivo : Integer;
    Fcontrolado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setalterado(const Value: indefinido);
    procedure Setpreco_anterior(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setcarga(const Value: Boolean);
    procedure Setmotivo(const Value: Integer);
    procedure Setcontrolado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property alterado     : indefinido read Falterado write Setalterado;
    property preco_anterior     : Double read Fpreco_anterior write Setpreco_anterior;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property carga     : Boolean read Fcarga write Setcarga;
    property motivo     : Integer read Fmotivo write Setmotivo;
    property controlado     : Boolean read Fcontrolado write Setcontrolado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutos(Model).id;
Self.Fid_produto         := TModelERPprodutos(Model).id_produto;
Self.Falterado         := TModelERPprodutos(Model).alterado;
Self.Fpreco_anterior         := TModelERPprodutos(Model).preco_anterior;
Self.Fpreco_venda         := TModelERPprodutos(Model).preco_venda;
Self.Fcarga         := TModelERPprodutos(Model).carga;
Self.Fmotivo         := TModelERPprodutos(Model).motivo;
Self.Fcontrolado         := TModelERPprodutos(Model).controlado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutos.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPprodutos.Setalterado(const Value: Boolean);   
begin                
  Falterado := Value;   
end;                 

procedure TModelERPprodutos.Setpreco_anterior(const Value: Boolean);   
begin                
  Fpreco_anterior := Value;   
end;                 

procedure TModelERPprodutos.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPprodutos.Setcarga(const Value: Boolean);   
begin                
  Fcarga := Value;   
end;                 

procedure TModelERPprodutos.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPprodutos.Setcontrolado(const Value: Boolean);   
begin                
  Fcontrolado := Value;   
end;                 


end.
