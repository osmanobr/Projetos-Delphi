unit Model.ERP.import_ean_produto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimporteanproduto = class(TModelBase)

private
    Fid : Integer;
    Fean : WideString;
    Fid_produto : Integer;
    Fdescricao_produto : WideString;
    Funidade : WideString;
    Fquantidade : Double;
    Fpreco_venda : Double;
    Fprimary_key : Boolean;
    Fean_principal : Boolean;
    Fativo : Boolean;
    Falterado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setean(const Value: WideString);
    procedure Setid_produto(const Value: Integer);
    procedure Setdescricao_produto(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setprimary_key(const Value: Boolean);
    procedure Setean_principal(const Value: Boolean);
    procedure Setativo(const Value: Boolean);
    procedure Setalterado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property ean     : WideString read Fean write Setean;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property descricao_produto     : WideString read Fdescricao_produto write Setdescricao_produto;
    property unidade     : WideString read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property primary_key     : Boolean read Fprimary_key write Setprimary_key;
    property ean_principal     : Boolean read Fean_principal write Setean_principal;
    property ativo     : Boolean read Fativo write Setativo;
    property alterado     : indefinido read Falterado write Setalterado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimporteanproduto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimporteanproduto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimporteanproduto(Model).id;
Self.Fean         := TModelERPimporteanproduto(Model).ean;
Self.Fid_produto         := TModelERPimporteanproduto(Model).id_produto;
Self.Fdescricao_produto         := TModelERPimporteanproduto(Model).descricao_produto;
Self.Funidade         := TModelERPimporteanproduto(Model).unidade;
Self.Fquantidade         := TModelERPimporteanproduto(Model).quantidade;
Self.Fpreco_venda         := TModelERPimporteanproduto(Model).preco_venda;
Self.Fprimary_key         := TModelERPimporteanproduto(Model).primary_key;
Self.Fean_principal         := TModelERPimporteanproduto(Model).ean_principal;
Self.Fativo         := TModelERPimporteanproduto(Model).ativo;
Self.Falterado         := TModelERPimporteanproduto(Model).alterado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimporteanproduto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimporteanproduto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimporteanproduto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimporteanproduto.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPimporteanproduto.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPimporteanproduto.Setdescricao_produto(const Value: Boolean);   
begin                
  Fdescricao_produto := Value;   
end;                 

procedure TModelERPimporteanproduto.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPimporteanproduto.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPimporteanproduto.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPimporteanproduto.Setprimary_key(const Value: Boolean);   
begin                
  Fprimary_key := Value;   
end;                 

procedure TModelERPimporteanproduto.Setean_principal(const Value: Boolean);   
begin                
  Fean_principal := Value;   
end;                 

procedure TModelERPimporteanproduto.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPimporteanproduto.Setalterado(const Value: Boolean);   
begin                
  Falterado := Value;   
end;                 


end.
