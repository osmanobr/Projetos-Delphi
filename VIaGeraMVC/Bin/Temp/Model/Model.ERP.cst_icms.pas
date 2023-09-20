unit Model.ERP.credencial_fotos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcredencialfotos = class(TModelBase)

private
    Fcst : WideString;
    Fdescricao : WideString;
    Ftipo : WideString;

    procedure Setcst(const Value: WideString);
    procedure Setdescricao(const Value: WideString);
    procedure Settipo(const Value: WideString);

public
    property cst     : WideString read Fcst write Setcst;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property tipo     : WideString read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcredencialfotos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcredencialfotos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fcst         := TModelERPcredencialfotos(Model).cst;
Self.Fdescricao         := TModelERPcredencialfotos(Model).descricao;
Self.Ftipo         := TModelERPcredencialfotos(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcredencialfotos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcredencialfotos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcredencialfotos.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPcredencialfotos.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPcredencialfotos.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
