unit Model.ERP.ean_produto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPeanproduto = class(TModelBase)

private
    Fean : WideString;
    Fid_produto : Integer;
    Fdescricao_produto : WideString;
    Funidade : WideString;
    Fquantidade : Double;
    Fpreco_venda : Double;
    Fprimary_key : Boolean;
    Fean_principal : Boolean;

    procedure Setean(const Value: WideString);
    procedure Setid_produto(const Value: Integer);
    procedure Setdescricao_produto(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setpreco_venda(const Value: Double);
    procedure Setprimary_key(const Value: Boolean);
    procedure Setean_principal(const Value: Boolean);

public
    property ean     : WideString read Fean write Setean;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property descricao_produto     : WideString read Fdescricao_produto write Setdescricao_produto;
    property unidade     : WideString read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property primary_key     : Boolean read Fprimary_key write Setprimary_key;
    property ean_principal     : Boolean read Fean_principal write Setean_principal;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPeanproduto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPeanproduto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fean         := TModelERPeanproduto(Model).ean;
Self.Fid_produto         := TModelERPeanproduto(Model).id_produto;
Self.Fdescricao_produto         := TModelERPeanproduto(Model).descricao_produto;
Self.Funidade         := TModelERPeanproduto(Model).unidade;
Self.Fquantidade         := TModelERPeanproduto(Model).quantidade;
Self.Fpreco_venda         := TModelERPeanproduto(Model).preco_venda;
Self.Fprimary_key         := TModelERPeanproduto(Model).primary_key;
Self.Fean_principal         := TModelERPeanproduto(Model).ean_principal;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPeanproduto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPeanproduto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPeanproduto.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPeanproduto.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPeanproduto.Setdescricao_produto(const Value: Boolean);   
begin                
  Fdescricao_produto := Value;   
end;                 

procedure TModelERPeanproduto.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPeanproduto.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPeanproduto.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPeanproduto.Setprimary_key(const Value: Boolean);   
begin                
  Fprimary_key := Value;   
end;                 

procedure TModelERPeanproduto.Setean_principal(const Value: Boolean);   
begin                
  Fean_principal := Value;   
end;                 


end.
