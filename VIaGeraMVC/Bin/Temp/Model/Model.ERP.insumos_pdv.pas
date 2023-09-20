unit Model.ERP.insumos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPinsumos = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Fquantidade : Double;
    Ftrib : WideString;
    Fippt : WideString;
    Fiat : WideString;
    Fean : WideString;
    Fcodigo_fabricante : WideString;
    Fid_princial : Integer;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Settrib(const Value: WideString);
    procedure Setippt(const Value: WideString);
    procedure Setiat(const Value: WideString);
    procedure Setean(const Value: WideString);
    procedure Setcodigo_fabricante(const Value: WideString);
    procedure Setid_princial(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property unidade     : WideString read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property trib     : WideString read Ftrib write Settrib;
    property ippt     : WideString read Fippt write Setippt;
    property iat     : WideString read Fiat write Setiat;
    property ean     : WideString read Fean write Setean;
    property codigo_fabricante     : WideString read Fcodigo_fabricante write Setcodigo_fabricante;
    property id_princial     : Integer read Fid_princial write Setid_princial;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPinsumos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPinsumos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPinsumos(Model).id;
Self.Fnome         := TModelERPinsumos(Model).nome;
Self.Funidade         := TModelERPinsumos(Model).unidade;
Self.Fquantidade         := TModelERPinsumos(Model).quantidade;
Self.Ftrib         := TModelERPinsumos(Model).trib;
Self.Fippt         := TModelERPinsumos(Model).ippt;
Self.Fiat         := TModelERPinsumos(Model).iat;
Self.Fean         := TModelERPinsumos(Model).ean;
Self.Fcodigo_fabricante         := TModelERPinsumos(Model).codigo_fabricante;
Self.Fid_princial         := TModelERPinsumos(Model).id_princial;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPinsumos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPinsumos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPinsumos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPinsumos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPinsumos.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPinsumos.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPinsumos.Settrib(const Value: Boolean);   
begin                
  Ftrib := Value;   
end;                 

procedure TModelERPinsumos.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPinsumos.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 

procedure TModelERPinsumos.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPinsumos.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPinsumos.Setid_princial(const Value: Boolean);   
begin                
  Fid_princial := Value;   
end;                 


end.
