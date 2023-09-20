unit Model.ERP.inventario;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPinventario = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Festoque_calculado : Double;
    Festoque_atual : Double;
    Fpreco_custo : Double;
    Fpreco_total : Double;
    Fano : WideString;
    Fst : WideString;
    Fmes : Integer;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setestoque_calculado(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_total(const Value: Double);
    procedure Setano(const Value: WideString);
    procedure Setst(const Value: WideString);
    procedure Setmes(const Value: Integer);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome     : WideString read Fnome write Setnome;
    property unidade     : WideString read Funidade write Setunidade;
    property estoque_calculado     : Double read Festoque_calculado write Setestoque_calculado;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_total     : Double read Fpreco_total write Setpreco_total;
    property ano     : WideString read Fano write Setano;
    property st     : WideString read Fst write Setst;
    property mes     : Integer read Fmes write Setmes;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPinventario.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPinventario) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPinventario(Model).id;
Self.Fid_produto         := TModelERPinventario(Model).id_produto;
Self.Fnome         := TModelERPinventario(Model).nome;
Self.Funidade         := TModelERPinventario(Model).unidade;
Self.Festoque_calculado         := TModelERPinventario(Model).estoque_calculado;
Self.Festoque_atual         := TModelERPinventario(Model).estoque_atual;
Self.Fpreco_custo         := TModelERPinventario(Model).preco_custo;
Self.Fpreco_total         := TModelERPinventario(Model).preco_total;
Self.Fano         := TModelERPinventario(Model).ano;
Self.Fst         := TModelERPinventario(Model).st;
Self.Fmes         := TModelERPinventario(Model).mes;
Self.Fquantidade_empresa_terceiro         := TModelERPinventario(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPinventario(Model).quantidade_terceiro_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPinventario.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPinventario.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPinventario.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPinventario.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPinventario.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPinventario.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPinventario.Setestoque_calculado(const Value: Boolean);   
begin                
  Festoque_calculado := Value;   
end;                 

procedure TModelERPinventario.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPinventario.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPinventario.Setpreco_total(const Value: Boolean);   
begin                
  Fpreco_total := Value;   
end;                 

procedure TModelERPinventario.Setano(const Value: Boolean);   
begin                
  Fano := Value;   
end;                 

procedure TModelERPinventario.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPinventario.Setmes(const Value: Boolean);   
begin                
  Fmes := Value;   
end;                 

procedure TModelERPinventario.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPinventario.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 


end.
