unit Model.ERP.import_deploy;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportdeploy = class(TModelBase)

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
 function TModelERPimportdeploy.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportdeploy) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportdeploy(Model).id;
Self.Fean         := TModelERPimportdeploy(Model).ean;
Self.Fid_produto         := TModelERPimportdeploy(Model).id_produto;
Self.Fdescricao_produto         := TModelERPimportdeploy(Model).descricao_produto;
Self.Funidade         := TModelERPimportdeploy(Model).unidade;
Self.Fquantidade         := TModelERPimportdeploy(Model).quantidade;
Self.Fpreco_venda         := TModelERPimportdeploy(Model).preco_venda;
Self.Fprimary_key         := TModelERPimportdeploy(Model).primary_key;
Self.Fean_principal         := TModelERPimportdeploy(Model).ean_principal;
Self.Fativo         := TModelERPimportdeploy(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportdeploy.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportdeploy.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportdeploy.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportdeploy.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPimportdeploy.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPimportdeploy.Setdescricao_produto(const Value: Boolean);   
begin                
  Fdescricao_produto := Value;   
end;                 

procedure TModelERPimportdeploy.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPimportdeploy.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPimportdeploy.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPimportdeploy.Setprimary_key(const Value: Boolean);   
begin                
  Fprimary_key := Value;   
end;                 

procedure TModelERPimportdeploy.Setean_principal(const Value: Boolean);   
begin                
  Fean_principal := Value;   
end;                 

procedure TModelERPimportdeploy.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
