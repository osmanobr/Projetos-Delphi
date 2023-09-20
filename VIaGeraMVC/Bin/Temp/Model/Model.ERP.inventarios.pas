unit Model.ERP.inventario_mes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPinventariomes = class(TModelBase)

private
    Fid : Integer;
    Fcodigo : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Festoque_calculado : Double;
    Festoque_atual : Double;
    Fpreco_custo : Double;
    Fpreco_total : Double;
    Fano : WideString;
    Fst : WideString;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setcodigo(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setestoque_calculado(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_total(const Value: Double);
    procedure Setano(const Value: WideString);
    procedure Setst(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property codigo     : Integer read Fcodigo write Setcodigo;
    property nome     : WideString read Fnome write Setnome;
    property unidade     : WideString read Funidade write Setunidade;
    property estoque_calculado     : Double read Festoque_calculado write Setestoque_calculado;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_total     : Double read Fpreco_total write Setpreco_total;
    property ano     : WideString read Fano write Setano;
    property st     : WideString read Fst write Setst;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPinventariomes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPinventariomes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPinventariomes(Model).id;
Self.Fcodigo         := TModelERPinventariomes(Model).codigo;
Self.Fnome         := TModelERPinventariomes(Model).nome;
Self.Funidade         := TModelERPinventariomes(Model).unidade;
Self.Festoque_calculado         := TModelERPinventariomes(Model).estoque_calculado;
Self.Festoque_atual         := TModelERPinventariomes(Model).estoque_atual;
Self.Fpreco_custo         := TModelERPinventariomes(Model).preco_custo;
Self.Fpreco_total         := TModelERPinventariomes(Model).preco_total;
Self.Fano         := TModelERPinventariomes(Model).ano;
Self.Fst         := TModelERPinventariomes(Model).st;
Self.Fdatahora         := TModelERPinventariomes(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPinventariomes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPinventariomes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPinventariomes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPinventariomes.Setcodigo(const Value: Boolean);   
begin                
  Fcodigo := Value;   
end;                 

procedure TModelERPinventariomes.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPinventariomes.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPinventariomes.Setestoque_calculado(const Value: Boolean);   
begin                
  Festoque_calculado := Value;   
end;                 

procedure TModelERPinventariomes.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPinventariomes.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPinventariomes.Setpreco_total(const Value: Boolean);   
begin                
  Fpreco_total := Value;   
end;                 

procedure TModelERPinventariomes.Setano(const Value: Boolean);   
begin                
  Fano := Value;   
end;                 

procedure TModelERPinventariomes.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPinventariomes.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
