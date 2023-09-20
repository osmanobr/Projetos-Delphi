unit Model.ERP.receita_agro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPreceitaagro = class(TModelBase)

private
    Fid : Integer;
    Fid_receita_agro : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fid_cultura : Integer;
    Fcultura : indefinido;
    Ftipo_produto : indefinido;
    Ftipo_aplicacao : indefinido;
    Fdosagem_sugerida : Double;
    Fdose : Double;
    Ftaxa_aplicacao : Double;
    Fquantidade : Double;
    Fnumero_aplicacoes : Double;
    Farea_aplicacao : Double;
    Fid_diagnostico : Integer;
    Fdiagnostico : indefinido;
    Fpre_diagnostico : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_receita_agro(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setid_cultura(const Value: Integer);
    procedure Setcultura(const Value: indefinido);
    procedure Settipo_produto(const Value: indefinido);
    procedure Settipo_aplicacao(const Value: indefinido);
    procedure Setdosagem_sugerida(const Value: Double);
    procedure Setdose(const Value: Double);
    procedure Settaxa_aplicacao(const Value: Double);
    procedure Setquantidade(const Value: Double);
    procedure Setnumero_aplicacoes(const Value: Double);
    procedure Setarea_aplicacao(const Value: Double);
    procedure Setid_diagnostico(const Value: Integer);
    procedure Setdiagnostico(const Value: indefinido);
    procedure Setpre_diagnostico(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_receita_agro     : Integer read Fid_receita_agro write Setid_receita_agro;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property id_cultura     : Integer read Fid_cultura write Setid_cultura;
    property cultura     : indefinido read Fcultura write Setcultura;
    property tipo_produto     : indefinido read Ftipo_produto write Settipo_produto;
    property tipo_aplicacao     : indefinido read Ftipo_aplicacao write Settipo_aplicacao;
    property dosagem_sugerida     : Double read Fdosagem_sugerida write Setdosagem_sugerida;
    property dose     : Double read Fdose write Setdose;
    property taxa_aplicacao     : Double read Ftaxa_aplicacao write Settaxa_aplicacao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property numero_aplicacoes     : Double read Fnumero_aplicacoes write Setnumero_aplicacoes;
    property area_aplicacao     : Double read Farea_aplicacao write Setarea_aplicacao;
    property id_diagnostico     : Integer read Fid_diagnostico write Setid_diagnostico;
    property diagnostico     : indefinido read Fdiagnostico write Setdiagnostico;
    property pre_diagnostico     : indefinido read Fpre_diagnostico write Setpre_diagnostico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPreceitaagro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPreceitaagro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPreceitaagro(Model).id;
Self.Fid_receita_agro         := TModelERPreceitaagro(Model).id_receita_agro;
Self.Fid_produto         := TModelERPreceitaagro(Model).id_produto;
Self.Fnome_produto         := TModelERPreceitaagro(Model).nome_produto;
Self.Fid_cultura         := TModelERPreceitaagro(Model).id_cultura;
Self.Fcultura         := TModelERPreceitaagro(Model).cultura;
Self.Ftipo_produto         := TModelERPreceitaagro(Model).tipo_produto;
Self.Ftipo_aplicacao         := TModelERPreceitaagro(Model).tipo_aplicacao;
Self.Fdosagem_sugerida         := TModelERPreceitaagro(Model).dosagem_sugerida;
Self.Fdose         := TModelERPreceitaagro(Model).dose;
Self.Ftaxa_aplicacao         := TModelERPreceitaagro(Model).taxa_aplicacao;
Self.Fquantidade         := TModelERPreceitaagro(Model).quantidade;
Self.Fnumero_aplicacoes         := TModelERPreceitaagro(Model).numero_aplicacoes;
Self.Farea_aplicacao         := TModelERPreceitaagro(Model).area_aplicacao;
Self.Fid_diagnostico         := TModelERPreceitaagro(Model).id_diagnostico;
Self.Fdiagnostico         := TModelERPreceitaagro(Model).diagnostico;
Self.Fpre_diagnostico         := TModelERPreceitaagro(Model).pre_diagnostico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPreceitaagro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPreceitaagro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPreceitaagro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPreceitaagro.Setid_receita_agro(const Value: Boolean);   
begin                
  Fid_receita_agro := Value;   
end;                 

procedure TModelERPreceitaagro.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPreceitaagro.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPreceitaagro.Setid_cultura(const Value: Boolean);   
begin                
  Fid_cultura := Value;   
end;                 

procedure TModelERPreceitaagro.Setcultura(const Value: Boolean);   
begin                
  Fcultura := Value;   
end;                 

procedure TModelERPreceitaagro.Settipo_produto(const Value: Boolean);   
begin                
  Ftipo_produto := Value;   
end;                 

procedure TModelERPreceitaagro.Settipo_aplicacao(const Value: Boolean);   
begin                
  Ftipo_aplicacao := Value;   
end;                 

procedure TModelERPreceitaagro.Setdosagem_sugerida(const Value: Boolean);   
begin                
  Fdosagem_sugerida := Value;   
end;                 

procedure TModelERPreceitaagro.Setdose(const Value: Boolean);   
begin                
  Fdose := Value;   
end;                 

procedure TModelERPreceitaagro.Settaxa_aplicacao(const Value: Boolean);   
begin                
  Ftaxa_aplicacao := Value;   
end;                 

procedure TModelERPreceitaagro.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPreceitaagro.Setnumero_aplicacoes(const Value: Boolean);   
begin                
  Fnumero_aplicacoes := Value;   
end;                 

procedure TModelERPreceitaagro.Setarea_aplicacao(const Value: Boolean);   
begin                
  Farea_aplicacao := Value;   
end;                 

procedure TModelERPreceitaagro.Setid_diagnostico(const Value: Boolean);   
begin                
  Fid_diagnostico := Value;   
end;                 

procedure TModelERPreceitaagro.Setdiagnostico(const Value: Boolean);   
begin                
  Fdiagnostico := Value;   
end;                 

procedure TModelERPreceitaagro.Setpre_diagnostico(const Value: Boolean);   
begin                
  Fpre_diagnostico := Value;   
end;                 


end.
