unit Model.ERP.posto_lancamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpostolancamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fprazo1 : Double;
    Fprazo2 : Double;
    Fprazo3 : Double;
    Fprazo4 : Double;
    Fprazo5 : Double;
    Fprazo6 : Double;
    Fprazo7 : Double;
    Fprazo8 : Double;
    Fprazo9 : Double;
    Fprazo10 : Double;
    Fprazo11 : Double;
    Fprazo12 : Double;
    Fprazo13 : Double;
    Fprazo14 : Double;
    Fprazo15 : Double;
    Fprazo16 : Double;
    Fprazo17 : Double;
    Fprazo18 : Double;
    Fprazo19 : Double;
    Fprazo20 : Double;
    Fprazo21 : Double;
    Fprazo22 : Double;
    Fprazo23 : Double;
    Fprazo24 : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setprazo1(const Value: Double);
    procedure Setprazo2(const Value: Double);
    procedure Setprazo3(const Value: Double);
    procedure Setprazo4(const Value: Double);
    procedure Setprazo5(const Value: Double);
    procedure Setprazo6(const Value: Double);
    procedure Setprazo7(const Value: Double);
    procedure Setprazo8(const Value: Double);
    procedure Setprazo9(const Value: Double);
    procedure Setprazo10(const Value: Double);
    procedure Setprazo11(const Value: Double);
    procedure Setprazo12(const Value: Double);
    procedure Setprazo13(const Value: Double);
    procedure Setprazo14(const Value: Double);
    procedure Setprazo15(const Value: Double);
    procedure Setprazo16(const Value: Double);
    procedure Setprazo17(const Value: Double);
    procedure Setprazo18(const Value: Double);
    procedure Setprazo19(const Value: Double);
    procedure Setprazo20(const Value: Double);
    procedure Setprazo21(const Value: Double);
    procedure Setprazo22(const Value: Double);
    procedure Setprazo23(const Value: Double);
    procedure Setprazo24(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property prazo1     : Double read Fprazo1 write Setprazo1;
    property prazo2     : Double read Fprazo2 write Setprazo2;
    property prazo3     : Double read Fprazo3 write Setprazo3;
    property prazo4     : Double read Fprazo4 write Setprazo4;
    property prazo5     : Double read Fprazo5 write Setprazo5;
    property prazo6     : Double read Fprazo6 write Setprazo6;
    property prazo7     : Double read Fprazo7 write Setprazo7;
    property prazo8     : Double read Fprazo8 write Setprazo8;
    property prazo9     : Double read Fprazo9 write Setprazo9;
    property prazo10     : Double read Fprazo10 write Setprazo10;
    property prazo11     : Double read Fprazo11 write Setprazo11;
    property prazo12     : Double read Fprazo12 write Setprazo12;
    property prazo13     : Double read Fprazo13 write Setprazo13;
    property prazo14     : Double read Fprazo14 write Setprazo14;
    property prazo15     : Double read Fprazo15 write Setprazo15;
    property prazo16     : Double read Fprazo16 write Setprazo16;
    property prazo17     : Double read Fprazo17 write Setprazo17;
    property prazo18     : Double read Fprazo18 write Setprazo18;
    property prazo19     : Double read Fprazo19 write Setprazo19;
    property prazo20     : Double read Fprazo20 write Setprazo20;
    property prazo21     : Double read Fprazo21 write Setprazo21;
    property prazo22     : Double read Fprazo22 write Setprazo22;
    property prazo23     : Double read Fprazo23 write Setprazo23;
    property prazo24     : Double read Fprazo24 write Setprazo24;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpostolancamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpostolancamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpostolancamento(Model).id;
Self.Fid_empresa         := TModelERPpostolancamento(Model).id_empresa;
Self.Fprazo1         := TModelERPpostolancamento(Model).prazo1;
Self.Fprazo2         := TModelERPpostolancamento(Model).prazo2;
Self.Fprazo3         := TModelERPpostolancamento(Model).prazo3;
Self.Fprazo4         := TModelERPpostolancamento(Model).prazo4;
Self.Fprazo5         := TModelERPpostolancamento(Model).prazo5;
Self.Fprazo6         := TModelERPpostolancamento(Model).prazo6;
Self.Fprazo7         := TModelERPpostolancamento(Model).prazo7;
Self.Fprazo8         := TModelERPpostolancamento(Model).prazo8;
Self.Fprazo9         := TModelERPpostolancamento(Model).prazo9;
Self.Fprazo10         := TModelERPpostolancamento(Model).prazo10;
Self.Fprazo11         := TModelERPpostolancamento(Model).prazo11;
Self.Fprazo12         := TModelERPpostolancamento(Model).prazo12;
Self.Fprazo13         := TModelERPpostolancamento(Model).prazo13;
Self.Fprazo14         := TModelERPpostolancamento(Model).prazo14;
Self.Fprazo15         := TModelERPpostolancamento(Model).prazo15;
Self.Fprazo16         := TModelERPpostolancamento(Model).prazo16;
Self.Fprazo17         := TModelERPpostolancamento(Model).prazo17;
Self.Fprazo18         := TModelERPpostolancamento(Model).prazo18;
Self.Fprazo19         := TModelERPpostolancamento(Model).prazo19;
Self.Fprazo20         := TModelERPpostolancamento(Model).prazo20;
Self.Fprazo21         := TModelERPpostolancamento(Model).prazo21;
Self.Fprazo22         := TModelERPpostolancamento(Model).prazo22;
Self.Fprazo23         := TModelERPpostolancamento(Model).prazo23;
Self.Fprazo24         := TModelERPpostolancamento(Model).prazo24;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpostolancamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpostolancamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpostolancamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpostolancamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo1(const Value: Boolean);   
begin                
  Fprazo1 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo2(const Value: Boolean);   
begin                
  Fprazo2 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo3(const Value: Boolean);   
begin                
  Fprazo3 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo4(const Value: Boolean);   
begin                
  Fprazo4 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo5(const Value: Boolean);   
begin                
  Fprazo5 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo6(const Value: Boolean);   
begin                
  Fprazo6 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo7(const Value: Boolean);   
begin                
  Fprazo7 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo8(const Value: Boolean);   
begin                
  Fprazo8 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo9(const Value: Boolean);   
begin                
  Fprazo9 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo10(const Value: Boolean);   
begin                
  Fprazo10 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo11(const Value: Boolean);   
begin                
  Fprazo11 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo12(const Value: Boolean);   
begin                
  Fprazo12 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo13(const Value: Boolean);   
begin                
  Fprazo13 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo14(const Value: Boolean);   
begin                
  Fprazo14 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo15(const Value: Boolean);   
begin                
  Fprazo15 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo16(const Value: Boolean);   
begin                
  Fprazo16 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo17(const Value: Boolean);   
begin                
  Fprazo17 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo18(const Value: Boolean);   
begin                
  Fprazo18 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo19(const Value: Boolean);   
begin                
  Fprazo19 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo20(const Value: Boolean);   
begin                
  Fprazo20 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo21(const Value: Boolean);   
begin                
  Fprazo21 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo22(const Value: Boolean);   
begin                
  Fprazo22 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo23(const Value: Boolean);   
begin                
  Fprazo23 := Value;   
end;                 

procedure TModelERPpostolancamento.Setprazo24(const Value: Boolean);   
begin                
  Fprazo24 := Value;   
end;                 


end.
