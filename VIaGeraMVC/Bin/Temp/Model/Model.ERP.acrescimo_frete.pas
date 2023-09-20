unit Model.ERP.acesso;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacesso = class(TModelBase)

private
    Fid : Integer;
    Fid_cidade : Integer;
    Fnome_cidade : WideString;
    Fvalor : Double;
    Fid_empresa : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_cidade(const Value: Integer);
    procedure Setnome_cidade(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setid_empresa(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property nome_cidade     : WideString read Fnome_cidade write Setnome_cidade;
    property valor     : Double read Fvalor write Setvalor;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPacesso.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacesso) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacesso(Model).id;
Self.Fid_cidade         := TModelERPacesso(Model).id_cidade;
Self.Fnome_cidade         := TModelERPacesso(Model).nome_cidade;
Self.Fvalor         := TModelERPacesso(Model).valor;
Self.Fid_empresa         := TModelERPacesso(Model).id_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacesso.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacesso.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacesso.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacesso.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPacesso.Setnome_cidade(const Value: Boolean);   
begin                
  Fnome_cidade := Value;   
end;                 

procedure TModelERPacesso.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPacesso.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 


end.
