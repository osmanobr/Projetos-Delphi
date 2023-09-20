unit Model.ERP.devolucao_referencia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdevolucaoreferencia = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_devolucao : Integer;
    Fid_di : Integer;
    Fnumero : WideString;
    Fsequencia : Integer;
    Fcodigo_fabricante : WideString;
    Fdesconto : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setid_di(const Value: Integer);
    procedure Setnumero(const Value: WideString);
    procedure Setsequencia(const Value: Integer);
    procedure Setcodigo_fabricante(const Value: WideString);
    procedure Setdesconto(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property id_di     : Integer read Fid_di write Setid_di;
    property numero     : WideString read Fnumero write Setnumero;
    property sequencia     : Integer read Fsequencia write Setsequencia;
    property codigo_fabricante     : WideString read Fcodigo_fabricante write Setcodigo_fabricante;
    property desconto     : Double read Fdesconto write Setdesconto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdevolucaoreferencia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdevolucaoreferencia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdevolucaoreferencia(Model).id;
Self.Fid_empresa         := TModelERPdevolucaoreferencia(Model).id_empresa;
Self.Fid_devolucao         := TModelERPdevolucaoreferencia(Model).id_devolucao;
Self.Fid_di         := TModelERPdevolucaoreferencia(Model).id_di;
Self.Fnumero         := TModelERPdevolucaoreferencia(Model).numero;
Self.Fsequencia         := TModelERPdevolucaoreferencia(Model).sequencia;
Self.Fcodigo_fabricante         := TModelERPdevolucaoreferencia(Model).codigo_fabricante;
Self.Fdesconto         := TModelERPdevolucaoreferencia(Model).desconto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdevolucaoreferencia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdevolucaoreferencia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdevolucaoreferencia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setid_di(const Value: Boolean);   
begin                
  Fid_di := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setsequencia(const Value: Boolean);   
begin                
  Fsequencia := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPdevolucaoreferencia.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 


end.
