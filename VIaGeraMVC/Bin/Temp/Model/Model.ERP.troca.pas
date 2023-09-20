unit Model.ERP.tributacoes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtributacoes = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fmotivo : indefinido;
    Fid_usuario : Integer;
    Fcupom_venda : indefinido;
    Fid_cliente : Integer;
    Fid_caixa : Integer;
    Fid_vendedor : Integer;
    Ftotal_devolvido : Double;
    Ftotal_trocado : Double;
    Ftotal_diferenca : Double;
    Fcredito : indefinido;
    Fgerado : indefinido;
    Fclick : Boolean;
    Fcupom_troca : indefinido;
    Fid_venda : Integer;
    Fid_venda_troca : Integer;
    Fid_devolucao : Integer;
    Fid_credito : Integer;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setmotivo(const Value: indefinido);
    procedure Setid_usuario(const Value: Integer);
    procedure Setcupom_venda(const Value: indefinido);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Settotal_devolvido(const Value: Double);
    procedure Settotal_trocado(const Value: Double);
    procedure Settotal_diferenca(const Value: Double);
    procedure Setcredito(const Value: indefinido);
    procedure Setgerado(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setcupom_troca(const Value: indefinido);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_venda_troca(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setid_credito(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property motivo     : indefinido read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property cupom_venda     : indefinido read Fcupom_venda write Setcupom_venda;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property total_devolvido     : Double read Ftotal_devolvido write Settotal_devolvido;
    property total_trocado     : Double read Ftotal_trocado write Settotal_trocado;
    property total_diferenca     : Double read Ftotal_diferenca write Settotal_diferenca;
    property credito     : indefinido read Fcredito write Setcredito;
    property gerado     : indefinido read Fgerado write Setgerado;
    property click     : Boolean read Fclick write Setclick;
    property cupom_troca     : indefinido read Fcupom_troca write Setcupom_troca;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_venda_troca     : Integer read Fid_venda_troca write Setid_venda_troca;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property id_credito     : Integer read Fid_credito write Setid_credito;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtributacoes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtributacoes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtributacoes(Model).id;
Self.Fdata         := TModelERPtributacoes(Model).data;
Self.Fmotivo         := TModelERPtributacoes(Model).motivo;
Self.Fid_usuario         := TModelERPtributacoes(Model).id_usuario;
Self.Fcupom_venda         := TModelERPtributacoes(Model).cupom_venda;
Self.Fid_cliente         := TModelERPtributacoes(Model).id_cliente;
Self.Fid_caixa         := TModelERPtributacoes(Model).id_caixa;
Self.Fid_vendedor         := TModelERPtributacoes(Model).id_vendedor;
Self.Ftotal_devolvido         := TModelERPtributacoes(Model).total_devolvido;
Self.Ftotal_trocado         := TModelERPtributacoes(Model).total_trocado;
Self.Ftotal_diferenca         := TModelERPtributacoes(Model).total_diferenca;
Self.Fcredito         := TModelERPtributacoes(Model).credito;
Self.Fgerado         := TModelERPtributacoes(Model).gerado;
Self.Fclick         := TModelERPtributacoes(Model).click;
Self.Fcupom_troca         := TModelERPtributacoes(Model).cupom_troca;
Self.Fid_venda         := TModelERPtributacoes(Model).id_venda;
Self.Fid_venda_troca         := TModelERPtributacoes(Model).id_venda_troca;
Self.Fid_devolucao         := TModelERPtributacoes(Model).id_devolucao;
Self.Fid_credito         := TModelERPtributacoes(Model).id_credito;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtributacoes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtributacoes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtributacoes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtributacoes.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPtributacoes.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPtributacoes.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPtributacoes.Setcupom_venda(const Value: Boolean);   
begin                
  Fcupom_venda := Value;   
end;                 

procedure TModelERPtributacoes.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPtributacoes.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPtributacoes.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPtributacoes.Settotal_devolvido(const Value: Boolean);   
begin                
  Ftotal_devolvido := Value;   
end;                 

procedure TModelERPtributacoes.Settotal_trocado(const Value: Boolean);   
begin                
  Ftotal_trocado := Value;   
end;                 

procedure TModelERPtributacoes.Settotal_diferenca(const Value: Boolean);   
begin                
  Ftotal_diferenca := Value;   
end;                 

procedure TModelERPtributacoes.Setcredito(const Value: Boolean);   
begin                
  Fcredito := Value;   
end;                 

procedure TModelERPtributacoes.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPtributacoes.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPtributacoes.Setcupom_troca(const Value: Boolean);   
begin                
  Fcupom_troca := Value;   
end;                 

procedure TModelERPtributacoes.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPtributacoes.Setid_venda_troca(const Value: Boolean);   
begin                
  Fid_venda_troca := Value;   
end;                 

procedure TModelERPtributacoes.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPtributacoes.Setid_credito(const Value: Boolean);   
begin                
  Fid_credito := Value;   
end;                 


end.
