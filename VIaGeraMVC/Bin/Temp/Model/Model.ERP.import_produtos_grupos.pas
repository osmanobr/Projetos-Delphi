unit Model.ERP.import_produtos_alterados;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportprodutosalterados = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportprodutosalterados.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportprodutosalterados) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportprodutosalterados(Model).id;
Self.Fid_empresa         := TModelERPimportprodutosalterados(Model).id_empresa;
Self.Fnome         := TModelERPimportprodutosalterados(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportprodutosalterados.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportprodutosalterados.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportprodutosalterados.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportprodutosalterados.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportprodutosalterados.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
