unit Model.ERP.cidades;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcidades = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcidades.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcidades) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcidades(Model).id;
Self.Fid_cliente         := TModelERPcidades(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcidades(Model).nome_cliente;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcidades.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcidades.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcidades.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcidades.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcidades.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 


end.
