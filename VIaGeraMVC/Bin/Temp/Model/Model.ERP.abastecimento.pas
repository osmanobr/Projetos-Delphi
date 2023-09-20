unit Model.ERP.a;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPa = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fbico : WideString;
    Fid_produto : Integer;
    Flitros : Double;
    Fpreco : Double;
    Ftotal : Double;
    Fcaixa : Integer;
    Fstatus : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setbico(const Value: WideString);
    procedure Setid_produto(const Value: Integer);
    procedure Setlitros(const Value: Double);
    procedure Setpreco(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setcaixa(const Value: Integer);
    procedure Setstatus(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property bico     : WideString read Fbico write Setbico;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property litros     : Double read Flitros write Setlitros;
    property preco     : Double read Fpreco write Setpreco;
    property total     : Double read Ftotal write Settotal;
    property caixa     : Integer read Fcaixa write Setcaixa;
    property status     : WideString read Fstatus write Setstatus;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPa(Model).id;
Self.Fdata         := TModelERPa(Model).data;
Self.Fbico         := TModelERPa(Model).bico;
Self.Fid_produto         := TModelERPa(Model).id_produto;
Self.Flitros         := TModelERPa(Model).litros;
Self.Fpreco         := TModelERPa(Model).preco;
Self.Ftotal         := TModelERPa(Model).total;
Self.Fcaixa         := TModelERPa(Model).caixa;
Self.Fstatus         := TModelERPa(Model).status;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPa.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPa.Setbico(const Value: Boolean);   
begin                
  Fbico := Value;   
end;                 

procedure TModelERPa.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPa.Setlitros(const Value: Boolean);   
begin                
  Flitros := Value;   
end;                 

procedure TModelERPa.Setpreco(const Value: Boolean);   
begin                
  Fpreco := Value;   
end;                 

procedure TModelERPa.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPa.Setcaixa(const Value: Boolean);   
begin                
  Fcaixa := Value;   
end;                 

procedure TModelERPa.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 


end.
