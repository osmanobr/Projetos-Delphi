unit Model.ERP.fechamento_caixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfechamentocaixa = class(TModelBase)

private
    Fid : Integer;
    Fid_fechamento_caixa : Integer;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Ffinalizadora : WideString;
    Fconta : WideString;
    Fsistema : Double;
    Finformado : Double;
    Fcalculado : Double;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_fechamento_caixa(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setfinalizadora(const Value: WideString);
    procedure Setconta(const Value: WideString);
    procedure Setsistema(const Value: Double);
    procedure Setinformado(const Value: Double);
    procedure Setcalculado(const Value: Double);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_fechamento_caixa     : Integer read Fid_fechamento_caixa write Setid_fechamento_caixa;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property finalizadora     : WideString read Ffinalizadora write Setfinalizadora;
    property conta     : WideString read Fconta write Setconta;
    property sistema     : Double read Fsistema write Setsistema;
    property informado     : Double read Finformado write Setinformado;
    property calculado     : Double read Fcalculado write Setcalculado;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfechamentocaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfechamentocaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfechamentocaixa(Model).id;
Self.Fid_fechamento_caixa         := TModelERPfechamentocaixa(Model).id_fechamento_caixa;
Self.Fid_forma         := TModelERPfechamentocaixa(Model).id_forma;
Self.Fid_conta         := TModelERPfechamentocaixa(Model).id_conta;
Self.Ffinalizadora         := TModelERPfechamentocaixa(Model).finalizadora;
Self.Fconta         := TModelERPfechamentocaixa(Model).conta;
Self.Fsistema         := TModelERPfechamentocaixa(Model).sistema;
Self.Finformado         := TModelERPfechamentocaixa(Model).informado;
Self.Fcalculado         := TModelERPfechamentocaixa(Model).calculado;
Self.Fdatahora         := TModelERPfechamentocaixa(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfechamentocaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfechamentocaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfechamentocaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setid_fechamento_caixa(const Value: Boolean);   
begin                
  Fid_fechamento_caixa := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setfinalizadora(const Value: Boolean);   
begin                
  Ffinalizadora := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setsistema(const Value: Boolean);   
begin                
  Fsistema := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setinformado(const Value: Boolean);   
begin                
  Finformado := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setcalculado(const Value: Boolean);   
begin                
  Fcalculado := Value;   
end;                 

procedure TModelERPfechamentocaixa.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
