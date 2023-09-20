unit Model.ERP.ncm_historico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPncmhistorico = class(TModelBase)

private
    Fid : Integer;
    Fncm_novo : indefinido;
    Fdescricao : indefinido;
    Fncm_excluido : indefinido;
    Fdescricao_excluido : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setncm_novo(const Value: indefinido);
    procedure Setdescricao(const Value: indefinido);
    procedure Setncm_excluido(const Value: indefinido);
    procedure Setdescricao_excluido(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property ncm_novo     : indefinido read Fncm_novo write Setncm_novo;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property ncm_excluido     : indefinido read Fncm_excluido write Setncm_excluido;
    property descricao_excluido     : indefinido read Fdescricao_excluido write Setdescricao_excluido;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPncmhistorico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPncmhistorico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPncmhistorico(Model).id;
Self.Fncm_novo         := TModelERPncmhistorico(Model).ncm_novo;
Self.Fdescricao         := TModelERPncmhistorico(Model).descricao;
Self.Fncm_excluido         := TModelERPncmhistorico(Model).ncm_excluido;
Self.Fdescricao_excluido         := TModelERPncmhistorico(Model).descricao_excluido;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPncmhistorico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPncmhistorico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPncmhistorico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPncmhistorico.Setncm_novo(const Value: Boolean);   
begin                
  Fncm_novo := Value;   
end;                 

procedure TModelERPncmhistorico.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPncmhistorico.Setncm_excluido(const Value: Boolean);   
begin                
  Fncm_excluido := Value;   
end;                 

procedure TModelERPncmhistorico.Setdescricao_excluido(const Value: Boolean);   
begin                
  Fdescricao_excluido := Value;   
end;                 


end.
