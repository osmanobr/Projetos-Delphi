unit Model.ERP.palmpedido;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpalmpedido = class(TModelBase)

private
    Fid : Integer;
    Fid_modelo_orcamento : Integer;
    Fnome_parametro : WideString;
    Fdescricao_parametro : indefinido;
    Fhabilitado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_modelo_orcamento(const Value: Integer);
    procedure Setnome_parametro(const Value: WideString);
    procedure Setdescricao_parametro(const Value: indefinido);
    procedure Sethabilitado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_modelo_orcamento     : Integer read Fid_modelo_orcamento write Setid_modelo_orcamento;
    property nome_parametro     : WideString read Fnome_parametro write Setnome_parametro;
    property descricao_parametro     : indefinido read Fdescricao_parametro write Setdescricao_parametro;
    property habilitado     : Boolean read Fhabilitado write Sethabilitado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpalmpedido.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpalmpedido) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpalmpedido(Model).id;
Self.Fid_modelo_orcamento         := TModelERPpalmpedido(Model).id_modelo_orcamento;
Self.Fnome_parametro         := TModelERPpalmpedido(Model).nome_parametro;
Self.Fdescricao_parametro         := TModelERPpalmpedido(Model).descricao_parametro;
Self.Fhabilitado         := TModelERPpalmpedido(Model).habilitado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpalmpedido.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpalmpedido.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpalmpedido.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpalmpedido.Setid_modelo_orcamento(const Value: Boolean);   
begin                
  Fid_modelo_orcamento := Value;   
end;                 

procedure TModelERPpalmpedido.Setnome_parametro(const Value: Boolean);   
begin                
  Fnome_parametro := Value;   
end;                 

procedure TModelERPpalmpedido.Setdescricao_parametro(const Value: Boolean);   
begin                
  Fdescricao_parametro := Value;   
end;                 

procedure TModelERPpalmpedido.Sethabilitado(const Value: Boolean);   
begin                
  Fhabilitado := Value;   
end;                 


end.
