unit Model.ERP.produtos_fotos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutosfotos = class(TModelBase)

private
    Fid : Integer;
    Fdescricao : WideString;
    Fdata_validade : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setdata_validade(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property data_validade     : TDateTime read Fdata_validade write Setdata_validade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutosfotos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutosfotos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutosfotos(Model).id;
Self.Fdescricao         := TModelERPprodutosfotos(Model).descricao;
Self.Fdata_validade         := TModelERPprodutosfotos(Model).data_validade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutosfotos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutosfotos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutosfotos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutosfotos.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPprodutosfotos.Setdata_validade(const Value: Boolean);   
begin                
  Fdata_validade := Value;   
end;                 


end.
