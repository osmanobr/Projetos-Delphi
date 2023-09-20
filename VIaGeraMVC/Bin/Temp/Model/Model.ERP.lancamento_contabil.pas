unit Model.ERP.kit;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPkit = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Foperacao : WideString;
    Fconta : WideString;
    Fdebcre : WideString;
    Fvalor : Double;
    Fid_venda : Integer;
    Fid_compra : Integer;
    Fid_caixa : Integer;
    Fid_banco : Integer;
    Fid_receber : Integer;
    Fid_pagar : Integer;
    Fhistorico : WideString;
    Fid_movimento : Integer;
    Fid_cupons : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setoperacao(const Value: WideString);
    procedure Setconta(const Value: WideString);
    procedure Setdebcre(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_banco(const Value: Integer);
    procedure Setid_receber(const Value: Integer);
    procedure Setid_pagar(const Value: Integer);
    procedure Sethistorico(const Value: WideString);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property operacao     : WideString read Foperacao write Setoperacao;
    property conta     : WideString read Fconta write Setconta;
    property debcre     : WideString read Fdebcre write Setdebcre;
    property valor     : Double read Fvalor write Setvalor;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property id_receber     : Integer read Fid_receber write Setid_receber;
    property id_pagar     : Integer read Fid_pagar write Setid_pagar;
    property historico     : WideString read Fhistorico write Sethistorico;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPkit.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPkit) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPkit(Model).id;
Self.Fid_empresa         := TModelERPkit(Model).id_empresa;
Self.Fdata         := TModelERPkit(Model).data;
Self.Foperacao         := TModelERPkit(Model).operacao;
Self.Fconta         := TModelERPkit(Model).conta;
Self.Fdebcre         := TModelERPkit(Model).debcre;
Self.Fvalor         := TModelERPkit(Model).valor;
Self.Fid_venda         := TModelERPkit(Model).id_venda;
Self.Fid_compra         := TModelERPkit(Model).id_compra;
Self.Fid_caixa         := TModelERPkit(Model).id_caixa;
Self.Fid_banco         := TModelERPkit(Model).id_banco;
Self.Fid_receber         := TModelERPkit(Model).id_receber;
Self.Fid_pagar         := TModelERPkit(Model).id_pagar;
Self.Fhistorico         := TModelERPkit(Model).historico;
Self.Fid_movimento         := TModelERPkit(Model).id_movimento;
Self.Fid_cupons         := TModelERPkit(Model).id_cupons;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPkit.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPkit.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPkit.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPkit.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPkit.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPkit.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPkit.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPkit.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPkit.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPkit.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPkit.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPkit.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPkit.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPkit.Setid_receber(const Value: Boolean);   
begin                
  Fid_receber := Value;   
end;                 

procedure TModelERPkit.Setid_pagar(const Value: Boolean);   
begin                
  Fid_pagar := Value;   
end;                 

procedure TModelERPkit.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPkit.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPkit.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 


end.
