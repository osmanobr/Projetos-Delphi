unit Model.ERP.fabricacao_processo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfabricacaoprocesso = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfabricacaoprocesso.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfabricacaoprocesso) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfabricacaoprocesso(Model).id;
Self.Fnome         := TModelERPfabricacaoprocesso(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfabricacaoprocesso.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfabricacaoprocesso.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfabricacaoprocesso.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfabricacaoprocesso.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
