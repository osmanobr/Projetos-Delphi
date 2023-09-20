unit Model.ERP.motorista;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmotorista = class(TModelBase)

private
    Fid : Integer;
    Fid_motorista : Integer;
    Fcnh : Boolean;
    Ffoto : Boolean;
    Fcartao_assinatura : Boolean;
    Fdoc : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_motorista(const Value: Integer);
    procedure Setcnh(const Value: Boolean);
    procedure Setfoto(const Value: Boolean);
    procedure Setcartao_assinatura(const Value: Boolean);
    procedure Setdoc(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_motorista     : Integer read Fid_motorista write Setid_motorista;
    property cnh     : Boolean read Fcnh write Setcnh;
    property foto     : Boolean read Ffoto write Setfoto;
    property cartao_assinatura     : Boolean read Fcartao_assinatura write Setcartao_assinatura;
    property doc     : indefinido read Fdoc write Setdoc;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmotorista.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmotorista) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmotorista(Model).id;
Self.Fid_motorista         := TModelERPmotorista(Model).id_motorista;
Self.Fcnh         := TModelERPmotorista(Model).cnh;
Self.Ffoto         := TModelERPmotorista(Model).foto;
Self.Fcartao_assinatura         := TModelERPmotorista(Model).cartao_assinatura;
Self.Fdoc         := TModelERPmotorista(Model).doc;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmotorista.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmotorista.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmotorista.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmotorista.Setid_motorista(const Value: Boolean);   
begin                
  Fid_motorista := Value;   
end;                 

procedure TModelERPmotorista.Setcnh(const Value: Boolean);   
begin                
  Fcnh := Value;   
end;                 

procedure TModelERPmotorista.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 

procedure TModelERPmotorista.Setcartao_assinatura(const Value: Boolean);   
begin                
  Fcartao_assinatura := Value;   
end;                 

procedure TModelERPmotorista.Setdoc(const Value: Boolean);   
begin                
  Fdoc := Value;   
end;                 


end.
