unit Model.ERP.ncm_tributacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPncmtributacao = class(TModelBase)

private
    Fncm : indefinido;
    Fdescricao : indefinido;
    Fcategoria : indefinido;
    Fcodigocategoria : indefinido;

    procedure Setncm(const Value: indefinido);
    procedure Setdescricao(const Value: indefinido);
    procedure Setcategoria(const Value: indefinido);
    procedure Setcodigocategoria(const Value: indefinido);

public
    property ncm     : indefinido read Fncm write Setncm;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property categoria     : indefinido read Fcategoria write Setcategoria;
    property codigocategoria     : indefinido read Fcodigocategoria write Setcodigocategoria;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPncmtributacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPncmtributacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fncm         := TModelERPncmtributacao(Model).ncm;
Self.Fdescricao         := TModelERPncmtributacao(Model).descricao;
Self.Fcategoria         := TModelERPncmtributacao(Model).categoria;
Self.Fcodigocategoria         := TModelERPncmtributacao(Model).codigocategoria;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPncmtributacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPncmtributacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPncmtributacao.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPncmtributacao.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPncmtributacao.Setcategoria(const Value: Boolean);   
begin                
  Fcategoria := Value;   
end;                 

procedure TModelERPncmtributacao.Setcodigocategoria(const Value: Boolean);   
begin                
  Fcodigocategoria := Value;   
end;                 


end.
