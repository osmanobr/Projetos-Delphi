unit Model.ERP.icmspf;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPicmspf = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fcodigo_barra : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setcodigo_barra(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property codigo_barra     : WideString read Fcodigo_barra write Setcodigo_barra;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPicmspf.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPicmspf) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPicmspf(Model).id;
Self.Fid_empresa         := TModelERPicmspf(Model).id_empresa;
Self.Fid_produto         := TModelERPicmspf(Model).id_produto;
Self.Fcodigo_barra         := TModelERPicmspf(Model).codigo_barra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPicmspf.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPicmspf.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPicmspf.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPicmspf.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPicmspf.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPicmspf.Setcodigo_barra(const Value: Boolean);   
begin                
  Fcodigo_barra := Value;   
end;                 


end.
