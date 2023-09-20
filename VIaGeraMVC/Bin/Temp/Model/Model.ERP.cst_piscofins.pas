unit Model.ERP.cst_icms;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcsticms = class(TModelBase)

private
    Fid : Integer;
    Fcst : WideString;
    Fdescricao : WideString;
    Fsaida : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setcst(const Value: WideString);
    procedure Setdescricao(const Value: WideString);
    procedure Setsaida(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property cst     : WideString read Fcst write Setcst;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property saida     : Boolean read Fsaida write Setsaida;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcsticms.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcsticms) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcsticms(Model).id;
Self.Fcst         := TModelERPcsticms(Model).cst;
Self.Fdescricao         := TModelERPcsticms(Model).descricao;
Self.Fsaida         := TModelERPcsticms(Model).saida;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcsticms.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcsticms.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcsticms.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcsticms.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPcsticms.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPcsticms.Setsaida(const Value: Boolean);   
begin                
  Fsaida := Value;   
end;                 


end.
