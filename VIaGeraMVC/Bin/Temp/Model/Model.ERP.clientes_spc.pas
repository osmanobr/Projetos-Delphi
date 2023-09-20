unit Model.ERP.clientes_propriedades;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientespropriedades = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fcontrato : WideString;
    Fdata_inclusao : TDateTime;
    Fdata_exclusao : TDateTime;
    Fvalor : Double;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setcontrato(const Value: WideString);
    procedure Setdata_inclusao(const Value: TDateTime);
    procedure Setdata_exclusao(const Value: TDateTime);
    procedure Setvalor(const Value: Double);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property contrato     : WideString read Fcontrato write Setcontrato;
    property data_inclusao     : TDateTime read Fdata_inclusao write Setdata_inclusao;
    property data_exclusao     : TDateTime read Fdata_exclusao write Setdata_exclusao;
    property valor     : Double read Fvalor write Setvalor;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientespropriedades.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientespropriedades) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientespropriedades(Model).id;
Self.Fid_cliente         := TModelERPclientespropriedades(Model).id_cliente;
Self.Fnome_cliente         := TModelERPclientespropriedades(Model).nome_cliente;
Self.Fcontrato         := TModelERPclientespropriedades(Model).contrato;
Self.Fdata_inclusao         := TModelERPclientespropriedades(Model).data_inclusao;
Self.Fdata_exclusao         := TModelERPclientespropriedades(Model).data_exclusao;
Self.Fvalor         := TModelERPclientespropriedades(Model).valor;
Self.Fclick         := TModelERPclientespropriedades(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientespropriedades.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientespropriedades.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientespropriedades.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientespropriedades.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientespropriedades.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPclientespropriedades.Setcontrato(const Value: Boolean);   
begin                
  Fcontrato := Value;   
end;                 

procedure TModelERPclientespropriedades.Setdata_inclusao(const Value: Boolean);   
begin                
  Fdata_inclusao := Value;   
end;                 

procedure TModelERPclientespropriedades.Setdata_exclusao(const Value: Boolean);   
begin                
  Fdata_exclusao := Value;   
end;                 

procedure TModelERPclientespropriedades.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPclientespropriedades.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
