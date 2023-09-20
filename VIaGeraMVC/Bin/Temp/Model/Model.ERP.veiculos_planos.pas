unit Model.ERP.veiculos_acessorios;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPveiculosacessorios = class(TModelBase)

private
    Fid : Integer;
    Fdescricao : WideString;
    Fpreco_base : Double;
    Fobs : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setpreco_base(const Value: Double);
    procedure Setobs(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property preco_base     : Double read Fpreco_base write Setpreco_base;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPveiculosacessorios.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPveiculosacessorios) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPveiculosacessorios(Model).id;
Self.Fdescricao         := TModelERPveiculosacessorios(Model).descricao;
Self.Fpreco_base         := TModelERPveiculosacessorios(Model).preco_base;
Self.Fobs         := TModelERPveiculosacessorios(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPveiculosacessorios.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPveiculosacessorios.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPveiculosacessorios.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPveiculosacessorios.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPveiculosacessorios.Setpreco_base(const Value: Boolean);   
begin                
  Fpreco_base := Value;   
end;                 

procedure TModelERPveiculosacessorios.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
