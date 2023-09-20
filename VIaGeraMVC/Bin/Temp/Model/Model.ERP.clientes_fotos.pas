unit Model.ERP.clientes_documentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientesdocumentos = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_dependente : Integer;
    Ffoto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_dependente(const Value: Integer);
    procedure Setfoto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_dependente     : Integer read Fid_dependente write Setid_dependente;
    property foto     : indefinido read Ffoto write Setfoto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientesdocumentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientesdocumentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientesdocumentos(Model).id;
Self.Fid_cliente         := TModelERPclientesdocumentos(Model).id_cliente;
Self.Fid_dependente         := TModelERPclientesdocumentos(Model).id_dependente;
Self.Ffoto         := TModelERPclientesdocumentos(Model).foto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientesdocumentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientesdocumentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientesdocumentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientesdocumentos.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientesdocumentos.Setid_dependente(const Value: Boolean);   
begin                
  Fid_dependente := Value;   
end;                 

procedure TModelERPclientesdocumentos.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 


end.
