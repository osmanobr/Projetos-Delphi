unit Model.ERP.contrato_cliente;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontratocliente = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_obra : Integer;
    Fid_usuario : Integer;
    Fdata_emissao : indefinido;
    Fvalor_total : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_obra(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setdata_emissao(const Value: indefinido);
    procedure Setvalor_total(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_obra     : Integer read Fid_obra write Setid_obra;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property data_emissao     : indefinido read Fdata_emissao write Setdata_emissao;
    property valor_total     : Double read Fvalor_total write Setvalor_total;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontratocliente.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontratocliente) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontratocliente(Model).id;
Self.Fid_cliente         := TModelERPcontratocliente(Model).id_cliente;
Self.Fid_obra         := TModelERPcontratocliente(Model).id_obra;
Self.Fid_usuario         := TModelERPcontratocliente(Model).id_usuario;
Self.Fdata_emissao         := TModelERPcontratocliente(Model).data_emissao;
Self.Fvalor_total         := TModelERPcontratocliente(Model).valor_total;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontratocliente.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontratocliente.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontratocliente.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontratocliente.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontratocliente.Setid_obra(const Value: Boolean);   
begin                
  Fid_obra := Value;   
end;                 

procedure TModelERPcontratocliente.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcontratocliente.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPcontratocliente.Setvalor_total(const Value: Boolean);   
begin                
  Fvalor_total := Value;   
end;                 


end.
