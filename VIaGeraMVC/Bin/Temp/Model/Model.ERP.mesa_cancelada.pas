unit Model.ERP.mesa_caixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesacaixa = class(TModelBase)

private
    Fid : Integer;
    Fcartao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setcartao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property cartao     : WideString read Fcartao write Setcartao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesacaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesacaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesacaixa(Model).id;
Self.Fcartao         := TModelERPmesacaixa(Model).cartao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesacaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesacaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesacaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesacaixa.Setcartao(const Value: Boolean);   
begin                
  Fcartao := Value;   
end;                 


end.
