unit Model.ERP.cst_piscofins;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcstpiscofins = class(TModelBase)

private
    Fid : Integer;
    Fnatureza : WideString;
    Fdescricao : indefinido;
    Fpis : Double;
    Fcofins : Double;
    Finicio : TDateTime;
    Ftermino : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setnatureza(const Value: WideString);
    procedure Setdescricao(const Value: indefinido);
    procedure Setpis(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setinicio(const Value: TDateTime);
    procedure Settermino(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property natureza     : WideString read Fnatureza write Setnatureza;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property pis     : Double read Fpis write Setpis;
    property cofins     : Double read Fcofins write Setcofins;
    property inicio     : TDateTime read Finicio write Setinicio;
    property termino     : TDateTime read Ftermino write Settermino;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcstpiscofins.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcstpiscofins) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcstpiscofins(Model).id;
Self.Fnatureza         := TModelERPcstpiscofins(Model).natureza;
Self.Fdescricao         := TModelERPcstpiscofins(Model).descricao;
Self.Fpis         := TModelERPcstpiscofins(Model).pis;
Self.Fcofins         := TModelERPcstpiscofins(Model).cofins;
Self.Finicio         := TModelERPcstpiscofins(Model).inicio;
Self.Ftermino         := TModelERPcstpiscofins(Model).termino;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcstpiscofins.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcstpiscofins.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcstpiscofins.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcstpiscofins.Setnatureza(const Value: Boolean);   
begin                
  Fnatureza := Value;   
end;                 

procedure TModelERPcstpiscofins.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPcstpiscofins.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPcstpiscofins.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPcstpiscofins.Setinicio(const Value: Boolean);   
begin                
  Finicio := Value;   
end;                 

procedure TModelERPcstpiscofins.Settermino(const Value: Boolean);   
begin                
  Ftermino := Value;   
end;                 


end.
