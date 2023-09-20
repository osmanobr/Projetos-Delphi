unit Model.ERP.promocao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpromocao = class(TModelBase)

private
    Fid : Integer;
    Fid_promocao : Integer;
    Fhistorico : indefinido;
    Fid_usuario : Integer;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_promocao(const Value: Integer);
    procedure Sethistorico(const Value: indefinido);
    procedure Setid_usuario(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_promocao     : Integer read Fid_promocao write Setid_promocao;
    property historico     : indefinido read Fhistorico write Sethistorico;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpromocao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpromocao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpromocao(Model).id;
Self.Fid_promocao         := TModelERPpromocao(Model).id_promocao;
Self.Fhistorico         := TModelERPpromocao(Model).historico;
Self.Fid_usuario         := TModelERPpromocao(Model).id_usuario;
Self.Fdatahora         := TModelERPpromocao(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpromocao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpromocao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpromocao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpromocao.Setid_promocao(const Value: Boolean);   
begin                
  Fid_promocao := Value;   
end;                 

procedure TModelERPpromocao.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPpromocao.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpromocao.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
