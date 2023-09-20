unit Model.ERP.inutilizacao_nfce_nfe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPinutilizacaonfcenfe = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Festoque_calculado : Double;
    Festoque_atual : Double;
    Fpreco_custo : Double;
    Fpreco_total : Double;
    Fano : WideString;
    Fst : WideString;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setestoque_calculado(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_total(const Value: Double);
    procedure Setano(const Value: WideString);
    procedure Setst(const Value: WideString);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property unidade     : WideString read Funidade write Setunidade;
    property estoque_calculado     : Double read Festoque_calculado write Setestoque_calculado;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_total     : Double read Fpreco_total write Setpreco_total;
    property ano     : WideString read Fano write Setano;
    property st     : WideString read Fst write Setst;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPinutilizacaonfcenfe.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPinutilizacaonfcenfe) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPinutilizacaonfcenfe(Model).id;
Self.Fnome         := TModelERPinutilizacaonfcenfe(Model).nome;
Self.Funidade         := TModelERPinutilizacaonfcenfe(Model).unidade;
Self.Festoque_calculado         := TModelERPinutilizacaonfcenfe(Model).estoque_calculado;
Self.Festoque_atual         := TModelERPinutilizacaonfcenfe(Model).estoque_atual;
Self.Fpreco_custo         := TModelERPinutilizacaonfcenfe(Model).preco_custo;
Self.Fpreco_total         := TModelERPinutilizacaonfcenfe(Model).preco_total;
Self.Fano         := TModelERPinutilizacaonfcenfe(Model).ano;
Self.Fst         := TModelERPinutilizacaonfcenfe(Model).st;
Self.Fquantidade_empresa_terceiro         := TModelERPinutilizacaonfcenfe(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPinutilizacaonfcenfe(Model).quantidade_terceiro_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPinutilizacaonfcenfe.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPinutilizacaonfcenfe.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPinutilizacaonfcenfe.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setestoque_calculado(const Value: Boolean);   
begin                
  Festoque_calculado := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setpreco_total(const Value: Boolean);   
begin                
  Fpreco_total := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setano(const Value: Boolean);   
begin                
  Fano := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPinutilizacaonfcenfe.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 


end.
