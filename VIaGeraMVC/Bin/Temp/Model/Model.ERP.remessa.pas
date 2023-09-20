unit Model.ERP.registro_tef;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPregistrotef = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_banco : Integer;
    Fnumero : Integer;
    Fsequencia : Integer;
    Fdata : TDateTime;
    Fnome_arquivo : indefinido;
    Fclick : Boolean;
    Finutilizada : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_banco(const Value: Integer);
    procedure Setnumero(const Value: Integer);
    procedure Setsequencia(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setnome_arquivo(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setinutilizada(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property numero     : Integer read Fnumero write Setnumero;
    property sequencia     : Integer read Fsequencia write Setsequencia;
    property data     : TDateTime read Fdata write Setdata;
    property nome_arquivo     : indefinido read Fnome_arquivo write Setnome_arquivo;
    property click     : Boolean read Fclick write Setclick;
    property inutilizada     : indefinido read Finutilizada write Setinutilizada;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPregistrotef.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPregistrotef) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPregistrotef(Model).id;
Self.Fid_empresa         := TModelERPregistrotef(Model).id_empresa;
Self.Fid_banco         := TModelERPregistrotef(Model).id_banco;
Self.Fnumero         := TModelERPregistrotef(Model).numero;
Self.Fsequencia         := TModelERPregistrotef(Model).sequencia;
Self.Fdata         := TModelERPregistrotef(Model).data;
Self.Fnome_arquivo         := TModelERPregistrotef(Model).nome_arquivo;
Self.Fclick         := TModelERPregistrotef(Model).click;
Self.Finutilizada         := TModelERPregistrotef(Model).inutilizada;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPregistrotef.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPregistrotef.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPregistrotef.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPregistrotef.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPregistrotef.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPregistrotef.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPregistrotef.Setsequencia(const Value: Boolean);   
begin                
  Fsequencia := Value;   
end;                 

procedure TModelERPregistrotef.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPregistrotef.Setnome_arquivo(const Value: Boolean);   
begin                
  Fnome_arquivo := Value;   
end;                 

procedure TModelERPregistrotef.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPregistrotef.Setinutilizada(const Value: Boolean);   
begin                
  Finutilizada := Value;   
end;                 


end.
