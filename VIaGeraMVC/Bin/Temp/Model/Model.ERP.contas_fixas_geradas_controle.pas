unit Model.ERP.contas_fixas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontasfixas = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_lote : Integer;
    Fid_fixa : Integer;
    Fdata_vencto : TDateTime;
    Fdata_gerado : TDateTime;
    Fenviado : Boolean;
    Ferro : indefinido;
    Fstatus : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setid_fixa(const Value: Integer);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdata_gerado(const Value: TDateTime);
    procedure Setenviado(const Value: Boolean);
    procedure Seterro(const Value: indefinido);
    procedure Setstatus(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property id_fixa     : Integer read Fid_fixa write Setid_fixa;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property data_gerado     : TDateTime read Fdata_gerado write Setdata_gerado;
    property enviado     : Boolean read Fenviado write Setenviado;
    property erro     : indefinido read Ferro write Seterro;
    property status     : Integer read Fstatus write Setstatus;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontasfixas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontasfixas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontasfixas(Model).id;
Self.Fid_empresa         := TModelERPcontasfixas(Model).id_empresa;
Self.Fid_lote         := TModelERPcontasfixas(Model).id_lote;
Self.Fid_fixa         := TModelERPcontasfixas(Model).id_fixa;
Self.Fdata_vencto         := TModelERPcontasfixas(Model).data_vencto;
Self.Fdata_gerado         := TModelERPcontasfixas(Model).data_gerado;
Self.Fenviado         := TModelERPcontasfixas(Model).enviado;
Self.Ferro         := TModelERPcontasfixas(Model).erro;
Self.Fstatus         := TModelERPcontasfixas(Model).status;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontasfixas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontasfixas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontasfixas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontasfixas.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontasfixas.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPcontasfixas.Setid_fixa(const Value: Boolean);   
begin                
  Fid_fixa := Value;   
end;                 

procedure TModelERPcontasfixas.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPcontasfixas.Setdata_gerado(const Value: Boolean);   
begin                
  Fdata_gerado := Value;   
end;                 

procedure TModelERPcontasfixas.Setenviado(const Value: Boolean);   
begin                
  Fenviado := Value;   
end;                 

procedure TModelERPcontasfixas.Seterro(const Value: Boolean);   
begin                
  Ferro := Value;   
end;                 

procedure TModelERPcontasfixas.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 


end.
