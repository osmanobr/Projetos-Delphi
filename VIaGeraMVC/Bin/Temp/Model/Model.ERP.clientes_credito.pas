unit Model.ERP.clientes_coringa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientescoringa = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_usuario : Integer;
    Fnome : indefinido;
    Fvl_credito : Double;
    Fvl_usado : Double;
    Fdata : TDateTime;
    Forigem : WideString;
    Fid_origem : Integer;
    Fid_conta : WideString;
    Fhistorico : indefinido;
    Festorno : Boolean;
    Fdata_estorno : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setvl_credito(const Value: Double);
    procedure Setvl_usado(const Value: Double);
    procedure Setdata(const Value: TDateTime);
    procedure Setorigem(const Value: WideString);
    procedure Setid_origem(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Sethistorico(const Value: indefinido);
    procedure Setestorno(const Value: Boolean);
    procedure Setdata_estorno(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property nome     : indefinido read Fnome write Setnome;
    property vl_credito     : Double read Fvl_credito write Setvl_credito;
    property vl_usado     : Double read Fvl_usado write Setvl_usado;
    property data     : TDateTime read Fdata write Setdata;
    property origem     : WideString read Forigem write Setorigem;
    property id_origem     : Integer read Fid_origem write Setid_origem;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property historico     : indefinido read Fhistorico write Sethistorico;
    property estorno     : Boolean read Festorno write Setestorno;
    property data_estorno     : TDateTime read Fdata_estorno write Setdata_estorno;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientescoringa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientescoringa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientescoringa(Model).id;
Self.Fid_empresa         := TModelERPclientescoringa(Model).id_empresa;
Self.Fid_cliente         := TModelERPclientescoringa(Model).id_cliente;
Self.Fid_usuario         := TModelERPclientescoringa(Model).id_usuario;
Self.Fnome         := TModelERPclientescoringa(Model).nome;
Self.Fvl_credito         := TModelERPclientescoringa(Model).vl_credito;
Self.Fvl_usado         := TModelERPclientescoringa(Model).vl_usado;
Self.Fdata         := TModelERPclientescoringa(Model).data;
Self.Forigem         := TModelERPclientescoringa(Model).origem;
Self.Fid_origem         := TModelERPclientescoringa(Model).id_origem;
Self.Fid_conta         := TModelERPclientescoringa(Model).id_conta;
Self.Fhistorico         := TModelERPclientescoringa(Model).historico;
Self.Festorno         := TModelERPclientescoringa(Model).estorno;
Self.Fdata_estorno         := TModelERPclientescoringa(Model).data_estorno;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientescoringa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientescoringa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientescoringa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientescoringa.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPclientescoringa.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientescoringa.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPclientescoringa.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPclientescoringa.Setvl_credito(const Value: Boolean);   
begin                
  Fvl_credito := Value;   
end;                 

procedure TModelERPclientescoringa.Setvl_usado(const Value: Boolean);   
begin                
  Fvl_usado := Value;   
end;                 

procedure TModelERPclientescoringa.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPclientescoringa.Setorigem(const Value: Boolean);   
begin                
  Forigem := Value;   
end;                 

procedure TModelERPclientescoringa.Setid_origem(const Value: Boolean);   
begin                
  Fid_origem := Value;   
end;                 

procedure TModelERPclientescoringa.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPclientescoringa.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPclientescoringa.Setestorno(const Value: Boolean);   
begin                
  Festorno := Value;   
end;                 

procedure TModelERPclientescoringa.Setdata_estorno(const Value: Boolean);   
begin                
  Fdata_estorno := Value;   
end;                 


end.
