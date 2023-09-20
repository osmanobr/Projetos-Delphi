unit Model.ERP.ean_produto_copy;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPeanprodutocopy = class(TModelBase)

private
    Fid : Integer;
    Fid_ean_produto : Integer;
    Falterado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_ean_produto(const Value: Integer);
    procedure Setalterado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_ean_produto     : Integer read Fid_ean_produto write Setid_ean_produto;
    property alterado     : indefinido read Falterado write Setalterado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPeanprodutocopy.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPeanprodutocopy) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPeanprodutocopy(Model).id;
Self.Fid_ean_produto         := TModelERPeanprodutocopy(Model).id_ean_produto;
Self.Falterado         := TModelERPeanprodutocopy(Model).alterado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPeanprodutocopy.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPeanprodutocopy.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPeanprodutocopy.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPeanprodutocopy.Setid_ean_produto(const Value: Boolean);   
begin                
  Fid_ean_produto := Value;   
end;                 

procedure TModelERPeanprodutocopy.Setalterado(const Value: Boolean);   
begin                
  Falterado := Value;   
end;                 


end.
