unit Model.ERP.import_clientes_dependentes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportclientesdependentes = class(TModelBase)

private
    Fid : Integer;
    Fid_dependente : Integer;
    Ffoto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_dependente(const Value: Integer);
    procedure Setfoto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_dependente     : Integer read Fid_dependente write Setid_dependente;
    property foto     : indefinido read Ffoto write Setfoto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportclientesdependentes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportclientesdependentes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportclientesdependentes(Model).id;
Self.Fid_dependente         := TModelERPimportclientesdependentes(Model).id_dependente;
Self.Ffoto         := TModelERPimportclientesdependentes(Model).foto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportclientesdependentes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportclientesdependentes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportclientesdependentes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportclientesdependentes.Setid_dependente(const Value: Boolean);   
begin                
  Fid_dependente := Value;   
end;                 

procedure TModelERPimportclientesdependentes.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 


end.
