unit Model.ERP.movimento_funcionario;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmovimentofuncionario = class(TModelBase)

private
    Fid : indefinido;
    Fnome : indefinido;
    Fcst : indefinido;

    procedure Setid(const Value: indefinido);
    procedure Setnome(const Value: indefinido);
    procedure Setcst(const Value: indefinido);

public
    property id     : indefinido read Fid write Setid;
    property nome     : indefinido read Fnome write Setnome;
    property cst     : indefinido read Fcst write Setcst;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmovimentofuncionario.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmovimentofuncionario) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmovimentofuncionario(Model).id;
Self.Fnome         := TModelERPmovimentofuncionario(Model).nome;
Self.Fcst         := TModelERPmovimentofuncionario(Model).cst;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmovimentofuncionario.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmovimentofuncionario.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmovimentofuncionario.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmovimentofuncionario.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPmovimentofuncionario.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 


end.
