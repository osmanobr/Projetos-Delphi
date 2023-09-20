unit Model.ERP.produtos_anp;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutosanp = class(TModelBase)

private
    Fid : Integer;
    Fnome : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property nome     : indefinido read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutosanp.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutosanp) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutosanp(Model).id;
Self.Fnome         := TModelERPprodutosanp(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutosanp.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutosanp.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutosanp.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutosanp.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
