unit Model.ERP.fechamento_caixa_manutencao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfechamentocaixamanutencao = class(TModelBase)

private
    Fid : Integer;
    Fid_fechamento : Integer;
    Fid_fechamento_detalhe : Integer;
    Fid_portador_caixa : Integer;
    Fid_portador_banco : Integer;
    Fvalor : Double;
    Fhistorico : WideString;
    Fdatahora : indefinido;
    Festorno : Boolean;
    Ffinalizadora : WideString;
    Fimportacao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_fechamento(const Value: Integer);
    procedure Setid_fechamento_detalhe(const Value: Integer);
    procedure Setid_portador_caixa(const Value: Integer);
    procedure Setid_portador_banco(const Value: Integer);
    procedure Setvalor(const Value: Double);
    procedure Sethistorico(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);
    procedure Setestorno(const Value: Boolean);
    procedure Setfinalizadora(const Value: WideString);
    procedure Setimportacao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_fechamento     : Integer read Fid_fechamento write Setid_fechamento;
    property id_fechamento_detalhe     : Integer read Fid_fechamento_detalhe write Setid_fechamento_detalhe;
    property id_portador_caixa     : Integer read Fid_portador_caixa write Setid_portador_caixa;
    property id_portador_banco     : Integer read Fid_portador_banco write Setid_portador_banco;
    property valor     : Double read Fvalor write Setvalor;
    property historico     : WideString read Fhistorico write Sethistorico;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property estorno     : Boolean read Festorno write Setestorno;
    property finalizadora     : WideString read Ffinalizadora write Setfinalizadora;
    property importacao     : WideString read Fimportacao write Setimportacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfechamentocaixamanutencao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfechamentocaixamanutencao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfechamentocaixamanutencao(Model).id;
Self.Fid_fechamento         := TModelERPfechamentocaixamanutencao(Model).id_fechamento;
Self.Fid_fechamento_detalhe         := TModelERPfechamentocaixamanutencao(Model).id_fechamento_detalhe;
Self.Fid_portador_caixa         := TModelERPfechamentocaixamanutencao(Model).id_portador_caixa;
Self.Fid_portador_banco         := TModelERPfechamentocaixamanutencao(Model).id_portador_banco;
Self.Fvalor         := TModelERPfechamentocaixamanutencao(Model).valor;
Self.Fhistorico         := TModelERPfechamentocaixamanutencao(Model).historico;
Self.Fdatahora         := TModelERPfechamentocaixamanutencao(Model).datahora;
Self.Festorno         := TModelERPfechamentocaixamanutencao(Model).estorno;
Self.Ffinalizadora         := TModelERPfechamentocaixamanutencao(Model).finalizadora;
Self.Fimportacao         := TModelERPfechamentocaixamanutencao(Model).importacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfechamentocaixamanutencao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfechamentocaixamanutencao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfechamentocaixamanutencao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setid_fechamento(const Value: Boolean);   
begin                
  Fid_fechamento := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setid_fechamento_detalhe(const Value: Boolean);   
begin                
  Fid_fechamento_detalhe := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setid_portador_caixa(const Value: Boolean);   
begin                
  Fid_portador_caixa := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setid_portador_banco(const Value: Boolean);   
begin                
  Fid_portador_banco := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setestorno(const Value: Boolean);   
begin                
  Festorno := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setfinalizadora(const Value: Boolean);   
begin                
  Ffinalizadora := Value;   
end;                 

procedure TModelERPfechamentocaixamanutencao.Setimportacao(const Value: Boolean);   
begin                
  Fimportacao := Value;   
end;                 


end.
