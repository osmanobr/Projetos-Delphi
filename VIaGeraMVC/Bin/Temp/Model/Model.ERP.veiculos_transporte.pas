unit Model.ERP.veiculos_planos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPveiculosplanos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresas : Integer;
    Fnome : indefinido;
    Fplaca : indefinido;
    Fcor : indefinido;
    Fcarga_maxima : Double;
    Ftempo_carga : indefinido;
    Fcarroceria : indefinido;
    Frenavam : WideString;
    Ftprod : Integer;
    Ftpcar : Integer;
    Fuf : WideString;
    Ftara : Integer;
    Fcapkg : Integer;
    Fcapm3 : Integer;
    Fid_motorista : Integer;
    Fproprietario : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresas(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setplaca(const Value: indefinido);
    procedure Setcor(const Value: indefinido);
    procedure Setcarga_maxima(const Value: Double);
    procedure Settempo_carga(const Value: indefinido);
    procedure Setcarroceria(const Value: indefinido);
    procedure Setrenavam(const Value: WideString);
    procedure Settprod(const Value: Integer);
    procedure Settpcar(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Settara(const Value: Integer);
    procedure Setcapkg(const Value: Integer);
    procedure Setcapm3(const Value: Integer);
    procedure Setid_motorista(const Value: Integer);
    procedure Setproprietario(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresas     : Integer read Fid_empresas write Setid_empresas;
    property nome     : indefinido read Fnome write Setnome;
    property placa     : indefinido read Fplaca write Setplaca;
    property cor     : indefinido read Fcor write Setcor;
    property carga_maxima     : Double read Fcarga_maxima write Setcarga_maxima;
    property tempo_carga     : indefinido read Ftempo_carga write Settempo_carga;
    property carroceria     : indefinido read Fcarroceria write Setcarroceria;
    property renavam     : WideString read Frenavam write Setrenavam;
    property tprod     : Integer read Ftprod write Settprod;
    property tpcar     : Integer read Ftpcar write Settpcar;
    property uf     : WideString read Fuf write Setuf;
    property tara     : Integer read Ftara write Settara;
    property capkg     : Integer read Fcapkg write Setcapkg;
    property capm3     : Integer read Fcapm3 write Setcapm3;
    property id_motorista     : Integer read Fid_motorista write Setid_motorista;
    property proprietario     : Boolean read Fproprietario write Setproprietario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPveiculosplanos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPveiculosplanos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPveiculosplanos(Model).id;
Self.Fid_empresas         := TModelERPveiculosplanos(Model).id_empresas;
Self.Fnome         := TModelERPveiculosplanos(Model).nome;
Self.Fplaca         := TModelERPveiculosplanos(Model).placa;
Self.Fcor         := TModelERPveiculosplanos(Model).cor;
Self.Fcarga_maxima         := TModelERPveiculosplanos(Model).carga_maxima;
Self.Ftempo_carga         := TModelERPveiculosplanos(Model).tempo_carga;
Self.Fcarroceria         := TModelERPveiculosplanos(Model).carroceria;
Self.Frenavam         := TModelERPveiculosplanos(Model).renavam;
Self.Ftprod         := TModelERPveiculosplanos(Model).tprod;
Self.Ftpcar         := TModelERPveiculosplanos(Model).tpcar;
Self.Fuf         := TModelERPveiculosplanos(Model).uf;
Self.Ftara         := TModelERPveiculosplanos(Model).tara;
Self.Fcapkg         := TModelERPveiculosplanos(Model).capkg;
Self.Fcapm3         := TModelERPveiculosplanos(Model).capm3;
Self.Fid_motorista         := TModelERPveiculosplanos(Model).id_motorista;
Self.Fproprietario         := TModelERPveiculosplanos(Model).proprietario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPveiculosplanos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPveiculosplanos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPveiculosplanos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPveiculosplanos.Setid_empresas(const Value: Boolean);   
begin                
  Fid_empresas := Value;   
end;                 

procedure TModelERPveiculosplanos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPveiculosplanos.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPveiculosplanos.Setcor(const Value: Boolean);   
begin                
  Fcor := Value;   
end;                 

procedure TModelERPveiculosplanos.Setcarga_maxima(const Value: Boolean);   
begin                
  Fcarga_maxima := Value;   
end;                 

procedure TModelERPveiculosplanos.Settempo_carga(const Value: Boolean);   
begin                
  Ftempo_carga := Value;   
end;                 

procedure TModelERPveiculosplanos.Setcarroceria(const Value: Boolean);   
begin                
  Fcarroceria := Value;   
end;                 

procedure TModelERPveiculosplanos.Setrenavam(const Value: Boolean);   
begin                
  Frenavam := Value;   
end;                 

procedure TModelERPveiculosplanos.Settprod(const Value: Boolean);   
begin                
  Ftprod := Value;   
end;                 

procedure TModelERPveiculosplanos.Settpcar(const Value: Boolean);   
begin                
  Ftpcar := Value;   
end;                 

procedure TModelERPveiculosplanos.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPveiculosplanos.Settara(const Value: Boolean);   
begin                
  Ftara := Value;   
end;                 

procedure TModelERPveiculosplanos.Setcapkg(const Value: Boolean);   
begin                
  Fcapkg := Value;   
end;                 

procedure TModelERPveiculosplanos.Setcapm3(const Value: Boolean);   
begin                
  Fcapm3 := Value;   
end;                 

procedure TModelERPveiculosplanos.Setid_motorista(const Value: Boolean);   
begin                
  Fid_motorista := Value;   
end;                 

procedure TModelERPveiculosplanos.Setproprietario(const Value: Boolean);   
begin                
  Fproprietario := Value;   
end;                 


end.
