unit Model.ERP.clientes_obras;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientesobras = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_cidade : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fmunicipio : WideString;
    Fhectares : Double;
    Fcei : WideString;
    Fitr : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_cidade(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setmunicipio(const Value: WideString);
    procedure Sethectares(const Value: Double);
    procedure Setcei(const Value: WideString);
    procedure Setitr(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property municipio     : WideString read Fmunicipio write Setmunicipio;
    property hectares     : Double read Fhectares write Sethectares;
    property cei     : WideString read Fcei write Setcei;
    property itr     : WideString read Fitr write Setitr;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientesobras.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientesobras) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientesobras(Model).id;
Self.Fid_cliente         := TModelERPclientesobras(Model).id_cliente;
Self.Fid_cidade         := TModelERPclientesobras(Model).id_cidade;
Self.Fnome         := TModelERPclientesobras(Model).nome;
Self.Fendereco         := TModelERPclientesobras(Model).endereco;
Self.Fmunicipio         := TModelERPclientesobras(Model).municipio;
Self.Fhectares         := TModelERPclientesobras(Model).hectares;
Self.Fcei         := TModelERPclientesobras(Model).cei;
Self.Fitr         := TModelERPclientesobras(Model).itr;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientesobras.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientesobras.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientesobras.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientesobras.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientesobras.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPclientesobras.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPclientesobras.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPclientesobras.Setmunicipio(const Value: Boolean);   
begin                
  Fmunicipio := Value;   
end;                 

procedure TModelERPclientesobras.Sethectares(const Value: Boolean);   
begin                
  Fhectares := Value;   
end;                 

procedure TModelERPclientesobras.Setcei(const Value: Boolean);   
begin                
  Fcei := Value;   
end;                 

procedure TModelERPclientesobras.Setitr(const Value: Boolean);   
begin                
  Fitr := Value;   
end;                 


end.
