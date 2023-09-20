unit Model.ERP.troca;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtroca = class(TModelBase)

private
    Fid : Integer;
    Fid_troca : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Ftipo : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fid_grade : Integer;
    Fcor_grade : indefinido;
    Ftam_grade : indefinido;
    Fgerado : indefinido;
    Fvl_total_pagar : Double;
    Fvl_desconto : Double;
    Fid_venda_item : Integer;
    Fqtd_caixa : Double;
    Funitario_caixa : Double;
    Fean : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_troca(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Settipo(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: indefinido);
    procedure Settam_grade(const Value: indefinido);
    procedure Setgerado(const Value: indefinido);
    procedure Setvl_total_pagar(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setqtd_caixa(const Value: Double);
    procedure Setunitario_caixa(const Value: Double);
    procedure Setean(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_troca     : Integer read Fid_troca write Setid_troca;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property tipo     : indefinido read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : indefinido read Fcor_grade write Setcor_grade;
    property tam_grade     : indefinido read Ftam_grade write Settam_grade;
    property gerado     : indefinido read Fgerado write Setgerado;
    property vl_total_pagar     : Double read Fvl_total_pagar write Setvl_total_pagar;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property qtd_caixa     : Double read Fqtd_caixa write Setqtd_caixa;
    property unitario_caixa     : Double read Funitario_caixa write Setunitario_caixa;
    property ean     : WideString read Fean write Setean;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtroca.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtroca) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtroca(Model).id;
Self.Fid_troca         := TModelERPtroca(Model).id_troca;
Self.Fid_produto         := TModelERPtroca(Model).id_produto;
Self.Fnome_produto         := TModelERPtroca(Model).nome_produto;
Self.Ftipo         := TModelERPtroca(Model).tipo;
Self.Fquantidade         := TModelERPtroca(Model).quantidade;
Self.Fvl_unitario         := TModelERPtroca(Model).vl_unitario;
Self.Fvl_total         := TModelERPtroca(Model).vl_total;
Self.Fid_grade         := TModelERPtroca(Model).id_grade;
Self.Fcor_grade         := TModelERPtroca(Model).cor_grade;
Self.Ftam_grade         := TModelERPtroca(Model).tam_grade;
Self.Fgerado         := TModelERPtroca(Model).gerado;
Self.Fvl_total_pagar         := TModelERPtroca(Model).vl_total_pagar;
Self.Fvl_desconto         := TModelERPtroca(Model).vl_desconto;
Self.Fid_venda_item         := TModelERPtroca(Model).id_venda_item;
Self.Fqtd_caixa         := TModelERPtroca(Model).qtd_caixa;
Self.Funitario_caixa         := TModelERPtroca(Model).unitario_caixa;
Self.Fean         := TModelERPtroca(Model).ean;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtroca.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtroca.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtroca.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtroca.Setid_troca(const Value: Boolean);   
begin                
  Fid_troca := Value;   
end;                 

procedure TModelERPtroca.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPtroca.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPtroca.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPtroca.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPtroca.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPtroca.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPtroca.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPtroca.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPtroca.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPtroca.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPtroca.Setvl_total_pagar(const Value: Boolean);   
begin                
  Fvl_total_pagar := Value;   
end;                 

procedure TModelERPtroca.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPtroca.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPtroca.Setqtd_caixa(const Value: Boolean);   
begin                
  Fqtd_caixa := Value;   
end;                 

procedure TModelERPtroca.Setunitario_caixa(const Value: Boolean);   
begin                
  Funitario_caixa := Value;   
end;                 

procedure TModelERPtroca.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 


end.
