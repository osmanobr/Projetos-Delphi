unit Model.ERP.secao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPsecao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fcomissao : Double;
    Fvalor : Double;
    Fclick : Boolean;
    Funidade : indefinido;
    Fissqn : Double;
    Fiat : indefinido;
    Fippt : indefinido;
    Ffabricante : indefinido;
    Fpreco_custo : Double;
    Fcst_pis : indefinido;
    Fcst_cofins : indefinido;
    Fnat_bc_cred : indefinido;
    Fcomissao_valor : Double;
    Fintervalo_utilizacao : Integer;
    Fmaximo_utilizado : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setcomissao(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setunidade(const Value: indefinido);
    procedure Setissqn(const Value: Double);
    procedure Setiat(const Value: indefinido);
    procedure Setippt(const Value: indefinido);
    procedure Setfabricante(const Value: indefinido);
    procedure Setpreco_custo(const Value: Double);
    procedure Setcst_pis(const Value: indefinido);
    procedure Setcst_cofins(const Value: indefinido);
    procedure Setnat_bc_cred(const Value: indefinido);
    procedure Setcomissao_valor(const Value: Double);
    procedure Setintervalo_utilizacao(const Value: Integer);
    procedure Setmaximo_utilizado(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property comissao     : Double read Fcomissao write Setcomissao;
    property valor     : Double read Fvalor write Setvalor;
    property click     : Boolean read Fclick write Setclick;
    property unidade     : indefinido read Funidade write Setunidade;
    property issqn     : Double read Fissqn write Setissqn;
    property iat     : indefinido read Fiat write Setiat;
    property ippt     : indefinido read Fippt write Setippt;
    property fabricante     : indefinido read Ffabricante write Setfabricante;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property cst_pis     : indefinido read Fcst_pis write Setcst_pis;
    property cst_cofins     : indefinido read Fcst_cofins write Setcst_cofins;
    property nat_bc_cred     : indefinido read Fnat_bc_cred write Setnat_bc_cred;
    property comissao_valor     : Double read Fcomissao_valor write Setcomissao_valor;
    property intervalo_utilizacao     : Integer read Fintervalo_utilizacao write Setintervalo_utilizacao;
    property maximo_utilizado     : Double read Fmaximo_utilizado write Setmaximo_utilizado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPsecao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPsecao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPsecao(Model).id;
Self.Fid_empresa         := TModelERPsecao(Model).id_empresa;
Self.Fnome         := TModelERPsecao(Model).nome;
Self.Fcomissao         := TModelERPsecao(Model).comissao;
Self.Fvalor         := TModelERPsecao(Model).valor;
Self.Fclick         := TModelERPsecao(Model).click;
Self.Funidade         := TModelERPsecao(Model).unidade;
Self.Fissqn         := TModelERPsecao(Model).issqn;
Self.Fiat         := TModelERPsecao(Model).iat;
Self.Fippt         := TModelERPsecao(Model).ippt;
Self.Ffabricante         := TModelERPsecao(Model).fabricante;
Self.Fpreco_custo         := TModelERPsecao(Model).preco_custo;
Self.Fcst_pis         := TModelERPsecao(Model).cst_pis;
Self.Fcst_cofins         := TModelERPsecao(Model).cst_cofins;
Self.Fnat_bc_cred         := TModelERPsecao(Model).nat_bc_cred;
Self.Fcomissao_valor         := TModelERPsecao(Model).comissao_valor;
Self.Fintervalo_utilizacao         := TModelERPsecao(Model).intervalo_utilizacao;
Self.Fmaximo_utilizado         := TModelERPsecao(Model).maximo_utilizado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPsecao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPsecao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPsecao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPsecao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPsecao.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPsecao.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPsecao.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPsecao.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPsecao.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPsecao.Setissqn(const Value: Boolean);   
begin                
  Fissqn := Value;   
end;                 

procedure TModelERPsecao.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 

procedure TModelERPsecao.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPsecao.Setfabricante(const Value: Boolean);   
begin                
  Ffabricante := Value;   
end;                 

procedure TModelERPsecao.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPsecao.Setcst_pis(const Value: Boolean);   
begin                
  Fcst_pis := Value;   
end;                 

procedure TModelERPsecao.Setcst_cofins(const Value: Boolean);   
begin                
  Fcst_cofins := Value;   
end;                 

procedure TModelERPsecao.Setnat_bc_cred(const Value: Boolean);   
begin                
  Fnat_bc_cred := Value;   
end;                 

procedure TModelERPsecao.Setcomissao_valor(const Value: Boolean);   
begin                
  Fcomissao_valor := Value;   
end;                 

procedure TModelERPsecao.Setintervalo_utilizacao(const Value: Boolean);   
begin                
  Fintervalo_utilizacao := Value;   
end;                 

procedure TModelERPsecao.Setmaximo_utilizado(const Value: Boolean);   
begin                
  Fmaximo_utilizado := Value;   
end;                 


end.
