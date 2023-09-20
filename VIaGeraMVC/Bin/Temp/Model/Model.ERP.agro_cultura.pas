unit Model.ERP.agenda_instalacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPagendainstalacao = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fnome_cientifico : WideString;
    Fclasse_economica : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setnome_cientifico(const Value: WideString);
    procedure Setclasse_economica(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property nome_cientifico     : WideString read Fnome_cientifico write Setnome_cientifico;
    property classe_economica     : WideString read Fclasse_economica write Setclasse_economica;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPagendainstalacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPagendainstalacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPagendainstalacao(Model).id;
Self.Fnome         := TModelERPagendainstalacao(Model).nome;
Self.Fnome_cientifico         := TModelERPagendainstalacao(Model).nome_cientifico;
Self.Fclasse_economica         := TModelERPagendainstalacao(Model).classe_economica;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPagendainstalacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPagendainstalacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPagendainstalacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPagendainstalacao.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPagendainstalacao.Setnome_cientifico(const Value: Boolean);   
begin                
  Fnome_cientifico := Value;   
end;                 

procedure TModelERPagendainstalacao.Setclasse_economica(const Value: Boolean);   
begin                
  Fclasse_economica := Value;   
end;                 


end.
