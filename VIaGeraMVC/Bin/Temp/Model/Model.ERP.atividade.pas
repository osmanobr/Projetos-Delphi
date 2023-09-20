unit Model.ERP.associacao_contingencia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPassociacaocontingencia = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPassociacaocontingencia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPassociacaocontingencia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPassociacaocontingencia(Model).id;
Self.Fnome         := TModelERPassociacaocontingencia(Model).nome;
Self.Fclick         := TModelERPassociacaocontingencia(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPassociacaocontingencia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPassociacaocontingencia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPassociacaocontingencia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPassociacaocontingencia.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPassociacaocontingencia.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
