unit Model.ERP.ibpt;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPibpt = class(TModelBase)

private
    Fid : Integer;
    Fuf : WideString;
    Fsigla : WideString;
    Ficms : Double;

    procedure Setid(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Setsigla(const Value: WideString);
    procedure Seticms(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property uf     : WideString read Fuf write Setuf;
    property sigla     : WideString read Fsigla write Setsigla;
    property icms     : Double read Ficms write Seticms;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPibpt.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPibpt) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPibpt(Model).id;
Self.Fuf         := TModelERPibpt(Model).uf;
Self.Fsigla         := TModelERPibpt(Model).sigla;
Self.Ficms         := TModelERPibpt(Model).icms;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPibpt.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPibpt.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPibpt.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPibpt.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPibpt.Setsigla(const Value: Boolean);   
begin                
  Fsigla := Value;   
end;                 

procedure TModelERPibpt.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 


end.
