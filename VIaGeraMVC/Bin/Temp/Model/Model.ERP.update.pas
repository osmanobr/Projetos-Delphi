unit Model.ERP.unidades_conversao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPunidadesconversao = class(TModelBase)

private


public

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPunidadesconversao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPunidadesconversao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPunidadesconversao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPunidadesconversao.IsEmpty: Boolean;   
begin                                                      

end;                                                       


end.
