unit Model.ERP.banco;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbanco = class(TModelBase)

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
 function TModelERPbanco.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbanco) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbanco(Model).id;
Self.Fid_empresa         := TModelERPbanco(Model).id_empresa;
Self.Fid_produto         := TModelERPbanco(Model).id_produto;
Self.Fcodigo_barra         := TModelERPbanco(Model).codigo_barra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbanco.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbanco.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbanco.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbanco.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbanco.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPbanco.Setcodigo_barra(const Value: Boolean);   
begin                
  Fcodigo_barra := Value;   
end;                 


end.
