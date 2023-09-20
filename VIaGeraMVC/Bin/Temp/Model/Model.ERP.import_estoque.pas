unit Model.ERP.import_ean_produto_alterados;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimporteanprodutoalterados = class(TModelBase)

private
    Fid_produto : Integer;
    Fcodigo : WideString;
    Fdescricao : WideString;
    Funidade : WideString;
    Fposicao : WideString;
    Fquantidade : Double;
    Funitario : Double;
    Fst : WideString;
    Ficms : Double;
    Fippt : WideString;
    Fiat : WideString;

    procedure Setid_produto(const Value: Integer);
    procedure Setcodigo(const Value: WideString);
    procedure Setdescricao(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setposicao(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setunitario(const Value: Double);
    procedure Setst(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Setippt(const Value: WideString);
    procedure Setiat(const Value: WideString);

public
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property codigo     : WideString read Fcodigo write Setcodigo;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property unidade     : WideString read Funidade write Setunidade;
    property posicao     : WideString read Fposicao write Setposicao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unitario     : Double read Funitario write Setunitario;
    property st     : WideString read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property ippt     : WideString read Fippt write Setippt;
    property iat     : WideString read Fiat write Setiat;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimporteanprodutoalterados.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimporteanprodutoalterados) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid_produto         := TModelERPimporteanprodutoalterados(Model).id_produto;
Self.Fcodigo         := TModelERPimporteanprodutoalterados(Model).codigo;
Self.Fdescricao         := TModelERPimporteanprodutoalterados(Model).descricao;
Self.Funidade         := TModelERPimporteanprodutoalterados(Model).unidade;
Self.Fposicao         := TModelERPimporteanprodutoalterados(Model).posicao;
Self.Fquantidade         := TModelERPimporteanprodutoalterados(Model).quantidade;
Self.Funitario         := TModelERPimporteanprodutoalterados(Model).unitario;
Self.Fst         := TModelERPimporteanprodutoalterados(Model).st;
Self.Ficms         := TModelERPimporteanprodutoalterados(Model).icms;
Self.Fippt         := TModelERPimporteanprodutoalterados(Model).ippt;
Self.Fiat         := TModelERPimporteanprodutoalterados(Model).iat;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimporteanprodutoalterados.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimporteanprodutoalterados.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimporteanprodutoalterados.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setcodigo(const Value: Boolean);   
begin                
  Fcodigo := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setposicao(const Value: Boolean);   
begin                
  Fposicao := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPimporteanprodutoalterados.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 


end.
