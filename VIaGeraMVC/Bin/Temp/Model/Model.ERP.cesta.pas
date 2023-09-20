unit Model.ERP.cest_itens;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcestitens = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fcomissao : Double;
    Fdata : TDateTime;
    Flote : Double;
    Fconta : WideString;
    Fgerada : WideString;
    Fcancelada : WideString;
    Fquantidade : Double;
    Fpreco_custo : Double;
    Fpreco_venda : Double;
    Fpreco_venda_original : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setcomissao(const Value: Double);
    procedure Setdata(const Value: TDateTime);
    procedure Setlote(const Value: Double);
    procedure Setconta(const Value: WideString);
    procedure Setgerada(const Value: WideString);
    procedure Setcancelada(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_venda_original(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property comissao     : Double read Fcomissao write Setcomissao;
    property data     : TDateTime read Fdata write Setdata;
    property lote     : Double read Flote write Setlote;
    property conta     : WideString read Fconta write Setconta;
    property gerada     : WideString read Fgerada write Setgerada;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_venda_original     : Double read Fpreco_venda_original write Setpreco_venda_original;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcestitens.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcestitens) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcestitens(Model).id;
Self.Fid_empresa         := TModelERPcestitens(Model).id_empresa;
Self.Fid_produto         := TModelERPcestitens(Model).id_produto;
Self.Fcomissao         := TModelERPcestitens(Model).comissao;
Self.Fdata         := TModelERPcestitens(Model).data;
Self.Flote         := TModelERPcestitens(Model).lote;
Self.Fconta         := TModelERPcestitens(Model).conta;
Self.Fgerada         := TModelERPcestitens(Model).gerada;
Self.Fcancelada         := TModelERPcestitens(Model).cancelada;
Self.Fquantidade         := TModelERPcestitens(Model).quantidade;
Self.Fpreco_custo         := TModelERPcestitens(Model).preco_custo;
Self.Fpreco_venda         := TModelERPcestitens(Model).preco_venda;
Self.Fpreco_venda_original         := TModelERPcestitens(Model).preco_venda_original;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcestitens.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcestitens.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcestitens.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcestitens.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcestitens.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcestitens.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcestitens.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcestitens.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPcestitens.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPcestitens.Setgerada(const Value: Boolean);   
begin                
  Fgerada := Value;   
end;                 

procedure TModelERPcestitens.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcestitens.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcestitens.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPcestitens.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPcestitens.Setpreco_venda_original(const Value: Boolean);   
begin                
  Fpreco_venda_original := Value;   
end;                 


end.
