unit Model.ERP.produtos_alterados;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutosalterados = class(TModelBase)

private
    Fid : indefinido;
    Fgrupo : indefinido;
    Fnome : indefinido;

    procedure Setid(const Value: indefinido);
    procedure Setgrupo(const Value: indefinido);
    procedure Setnome(const Value: indefinido);

public
    property id     : indefinido read Fid write Setid;
    property grupo     : indefinido read Fgrupo write Setgrupo;
    property nome     : indefinido read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutosalterados.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutosalterados) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutosalterados(Model).id;
Self.Fgrupo         := TModelERPprodutosalterados(Model).grupo;
Self.Fnome         := TModelERPprodutosalterados(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutosalterados.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutosalterados.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutosalterados.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutosalterados.Setgrupo(const Value: Boolean);   
begin                
  Fgrupo := Value;   
end;                 

procedure TModelERPprodutosalterados.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
