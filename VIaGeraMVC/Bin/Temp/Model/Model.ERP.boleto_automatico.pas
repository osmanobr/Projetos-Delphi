unit Model.ERP.boleto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPboleto = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_conta_receber : Integer;
    Fdata_geracao : TDateTime;
    Fvalor_ant : Double;
    Fvalor : Double;
    Fgerado : Integer;
    Fpublicado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setdata_geracao(const Value: TDateTime);
    procedure Setvalor_ant(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Setgerado(const Value: Integer);
    procedure Setpublicado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property data_geracao     : TDateTime read Fdata_geracao write Setdata_geracao;
    property valor_ant     : Double read Fvalor_ant write Setvalor_ant;
    property valor     : Double read Fvalor write Setvalor;
    property gerado     : Integer read Fgerado write Setgerado;
    property publicado     : Boolean read Fpublicado write Setpublicado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPboleto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPboleto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPboleto(Model).id;
Self.Fid_cliente         := TModelERPboleto(Model).id_cliente;
Self.Fid_conta_receber         := TModelERPboleto(Model).id_conta_receber;
Self.Fdata_geracao         := TModelERPboleto(Model).data_geracao;
Self.Fvalor_ant         := TModelERPboleto(Model).valor_ant;
Self.Fvalor         := TModelERPboleto(Model).valor;
Self.Fgerado         := TModelERPboleto(Model).gerado;
Self.Fpublicado         := TModelERPboleto(Model).publicado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPboleto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPboleto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPboleto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPboleto.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPboleto.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPboleto.Setdata_geracao(const Value: Boolean);   
begin                
  Fdata_geracao := Value;   
end;                 

procedure TModelERPboleto.Setvalor_ant(const Value: Boolean);   
begin                
  Fvalor_ant := Value;   
end;                 

procedure TModelERPboleto.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPboleto.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPboleto.Setpublicado(const Value: Boolean);   
begin                
  Fpublicado := Value;   
end;                 


end.
