unit Model.ERP.grupo_produto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPgrupoproduto = class(TModelBase)

private
    Fcodigo : WideString;
    Fex : WideString;
    Ftipo : Integer;
    Fdescricao : indefinido;
    Fnacionalfederal : Double;
    Fimportadosfederal : Double;
    Festadual : Double;
    Fmunicipal : Double;
    Fvigenciainicio : WideString;
    Fvigenciafim : WideString;
    Fchave : WideString;
    Fversao : WideString;
    Ffonte : WideString;

    procedure Setcodigo(const Value: WideString);
    procedure Setex(const Value: WideString);
    procedure Settipo(const Value: Integer);
    procedure Setdescricao(const Value: indefinido);
    procedure Setnacionalfederal(const Value: Double);
    procedure Setimportadosfederal(const Value: Double);
    procedure Setestadual(const Value: Double);
    procedure Setmunicipal(const Value: Double);
    procedure Setvigenciainicio(const Value: WideString);
    procedure Setvigenciafim(const Value: WideString);
    procedure Setchave(const Value: WideString);
    procedure Setversao(const Value: WideString);
    procedure Setfonte(const Value: WideString);

public
    property codigo     : WideString read Fcodigo write Setcodigo;
    property ex     : WideString read Fex write Setex;
    property tipo     : Integer read Ftipo write Settipo;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property nacionalfederal     : Double read Fnacionalfederal write Setnacionalfederal;
    property importadosfederal     : Double read Fimportadosfederal write Setimportadosfederal;
    property estadual     : Double read Festadual write Setestadual;
    property municipal     : Double read Fmunicipal write Setmunicipal;
    property vigenciainicio     : WideString read Fvigenciainicio write Setvigenciainicio;
    property vigenciafim     : WideString read Fvigenciafim write Setvigenciafim;
    property chave     : WideString read Fchave write Setchave;
    property versao     : WideString read Fversao write Setversao;
    property fonte     : WideString read Ffonte write Setfonte;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPgrupoproduto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPgrupoproduto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fcodigo         := TModelERPgrupoproduto(Model).codigo;
Self.Fex         := TModelERPgrupoproduto(Model).ex;
Self.Ftipo         := TModelERPgrupoproduto(Model).tipo;
Self.Fdescricao         := TModelERPgrupoproduto(Model).descricao;
Self.Fnacionalfederal         := TModelERPgrupoproduto(Model).nacionalfederal;
Self.Fimportadosfederal         := TModelERPgrupoproduto(Model).importadosfederal;
Self.Festadual         := TModelERPgrupoproduto(Model).estadual;
Self.Fmunicipal         := TModelERPgrupoproduto(Model).municipal;
Self.Fvigenciainicio         := TModelERPgrupoproduto(Model).vigenciainicio;
Self.Fvigenciafim         := TModelERPgrupoproduto(Model).vigenciafim;
Self.Fchave         := TModelERPgrupoproduto(Model).chave;
Self.Fversao         := TModelERPgrupoproduto(Model).versao;
Self.Ffonte         := TModelERPgrupoproduto(Model).fonte;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPgrupoproduto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPgrupoproduto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPgrupoproduto.Setcodigo(const Value: Boolean);   
begin                
  Fcodigo := Value;   
end;                 

procedure TModelERPgrupoproduto.Setex(const Value: Boolean);   
begin                
  Fex := Value;   
end;                 

procedure TModelERPgrupoproduto.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPgrupoproduto.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPgrupoproduto.Setnacionalfederal(const Value: Boolean);   
begin                
  Fnacionalfederal := Value;   
end;                 

procedure TModelERPgrupoproduto.Setimportadosfederal(const Value: Boolean);   
begin                
  Fimportadosfederal := Value;   
end;                 

procedure TModelERPgrupoproduto.Setestadual(const Value: Boolean);   
begin                
  Festadual := Value;   
end;                 

procedure TModelERPgrupoproduto.Setmunicipal(const Value: Boolean);   
begin                
  Fmunicipal := Value;   
end;                 

procedure TModelERPgrupoproduto.Setvigenciainicio(const Value: Boolean);   
begin                
  Fvigenciainicio := Value;   
end;                 

procedure TModelERPgrupoproduto.Setvigenciafim(const Value: Boolean);   
begin                
  Fvigenciafim := Value;   
end;                 

procedure TModelERPgrupoproduto.Setchave(const Value: Boolean);   
begin                
  Fchave := Value;   
end;                 

procedure TModelERPgrupoproduto.Setversao(const Value: Boolean);   
begin                
  Fversao := Value;   
end;                 

procedure TModelERPgrupoproduto.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 


end.
