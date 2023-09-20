unit Model.ERP.duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPduplicata = class(TModelBase)

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

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPduplicata(Model).id;
Self.Fean         := TModelERPduplicata(Model).ean;
Self.Fid_produto         := TModelERPduplicata(Model).id_produto;
Self.Fdescricao_produto         := TModelERPduplicata(Model).descricao_produto;
Self.Funidade         := TModelERPduplicata(Model).unidade;
Self.Fquantidade         := TModelERPduplicata(Model).quantidade;
Self.Fpreco_venda         := TModelERPduplicata(Model).preco_venda;
Self.Fprimary_key         := TModelERPduplicata(Model).primary_key;
Self.Fean_principal         := TModelERPduplicata(Model).ean_principal;
Self.Fativo         := TModelERPduplicata(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPduplicata.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPduplicata.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPduplicata.Setdescricao_produto(const Value: Boolean);   
begin                
  Fdescricao_produto := Value;   
end;                 

procedure TModelERPduplicata.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPduplicata.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPduplicata.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPduplicata.Setprimary_key(const Value: Boolean);   
begin                
  Fprimary_key := Value;   
end;                 

procedure TModelERPduplicata.Setean_principal(const Value: Boolean);   
begin                
  Fean_principal := Value;   
end;                 

procedure TModelERPduplicata.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
