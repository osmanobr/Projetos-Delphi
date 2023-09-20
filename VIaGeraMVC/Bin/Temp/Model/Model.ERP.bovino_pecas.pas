unit Model.ERP.bovino_cortes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbovinocortes = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fid_produto : Integer;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setid_produto(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property id_produto     : Integer read Fid_produto write Setid_produto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbovinocortes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbovinocortes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbovinocortes(Model).id;
Self.Fnome         := TModelERPbovinocortes(Model).nome;
Self.Fid_produto         := TModelERPbovinocortes(Model).id_produto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbovinocortes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbovinocortes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbovinocortes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbovinocortes.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPbovinocortes.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 


end.
