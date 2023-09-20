unit Model.ERP.transportadora;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtransportadora = class(TModelBase)

private
    Fid : Integer;
    Fst : indefinido;
    Ficms : Double;
    Freducao : Double;
    Fcst : indefinido;
    Fcsosn : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setst(const Value: indefinido);
    procedure Seticms(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setcst(const Value: indefinido);
    procedure Setcsosn(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property st     : indefinido read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property reducao     : Double read Freducao write Setreducao;
    property cst     : indefinido read Fcst write Setcst;
    property csosn     : indefinido read Fcsosn write Setcsosn;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtransportadora.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtransportadora) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtransportadora(Model).id;
Self.Fst         := TModelERPtransportadora(Model).st;
Self.Ficms         := TModelERPtransportadora(Model).icms;
Self.Freducao         := TModelERPtransportadora(Model).reducao;
Self.Fcst         := TModelERPtransportadora(Model).cst;
Self.Fcsosn         := TModelERPtransportadora(Model).csosn;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtransportadora.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtransportadora.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtransportadora.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtransportadora.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPtransportadora.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPtransportadora.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPtransportadora.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPtransportadora.Setcsosn(const Value: Boolean);   
begin                
  Fcsosn := Value;   
end;                 


end.
