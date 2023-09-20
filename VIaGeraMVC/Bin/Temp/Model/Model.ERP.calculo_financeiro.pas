unit Model.ERP.caixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcaixa = class(TModelBase)

private
    Fid : Integer;
    Fvencimento : TDateTime;
    Fvalor : Double;
    Fjuro : Double;
    Ftotal : Double;

    procedure Setid(const Value: Integer);
    procedure Setvencimento(const Value: TDateTime);
    procedure Setvalor(const Value: Double);
    procedure Setjuro(const Value: Double);
    procedure Settotal(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property vencimento     : TDateTime read Fvencimento write Setvencimento;
    property valor     : Double read Fvalor write Setvalor;
    property juro     : Double read Fjuro write Setjuro;
    property total     : Double read Ftotal write Settotal;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcaixa(Model).id;
Self.Fvencimento         := TModelERPcaixa(Model).vencimento;
Self.Fvalor         := TModelERPcaixa(Model).valor;
Self.Fjuro         := TModelERPcaixa(Model).juro;
Self.Ftotal         := TModelERPcaixa(Model).total;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcaixa.Setvencimento(const Value: Boolean);   
begin                
  Fvencimento := Value;   
end;                 

procedure TModelERPcaixa.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcaixa.Setjuro(const Value: Boolean);   
begin                
  Fjuro := Value;   
end;                 

procedure TModelERPcaixa.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 


end.
