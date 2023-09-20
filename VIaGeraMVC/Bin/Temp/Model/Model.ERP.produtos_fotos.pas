unit Model.ERP.produtos_especiais;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutosespeciais = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Ffoto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setfoto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property foto     : indefinido read Ffoto write Setfoto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutosespeciais.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutosespeciais) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutosespeciais(Model).id;
Self.Fid_produto         := TModelERPprodutosespeciais(Model).id_produto;
Self.Ffoto         := TModelERPprodutosespeciais(Model).foto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutosespeciais.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutosespeciais.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutosespeciais.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutosespeciais.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPprodutosespeciais.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 


end.
