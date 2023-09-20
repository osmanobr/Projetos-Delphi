unit Model.ERP.os_servico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPosservico = class(TModelBase)

private
    Fa2 : indefinido;
    Fp2 : indefinido;
    Fe2 : indefinido;
    Fe3 : indefinido;
    Fd2 : indefinido;
    Fd3 : indefinido;
    Fd4 : indefinido;
    Fb2 : indefinido;
    Fc2 : indefinido;
    Ff2 : indefinido;
    Ff3 : indefinido;
    Ff4 : indefinido;
    Ft2 : indefinido;
    Fm2 : indefinido;
    Fl2 : indefinido;
    Fg2 : indefinido;
    Fh2 : indefinido;
    Fs2 : indefinido;
    Fs3 : indefinido;
    Fr1 : indefinido;
    Fr2 : indefinido;
    Fr3 : indefinido;
    Fr4 : indefinido;
    Fr5 : indefinido;
    Fr6 : indefinido;
    Fr7 : indefinido;

    procedure Seta2(const Value: indefinido);
    procedure Setp2(const Value: indefinido);
    procedure Sete2(const Value: indefinido);
    procedure Sete3(const Value: indefinido);
    procedure Setd2(const Value: indefinido);
    procedure Setd3(const Value: indefinido);
    procedure Setd4(const Value: indefinido);
    procedure Setb2(const Value: indefinido);
    procedure Setc2(const Value: indefinido);
    procedure Setf2(const Value: indefinido);
    procedure Setf3(const Value: indefinido);
    procedure Setf4(const Value: indefinido);
    procedure Sett2(const Value: indefinido);
    procedure Setm2(const Value: indefinido);
    procedure Setl2(const Value: indefinido);
    procedure Setg2(const Value: indefinido);
    procedure Seth2(const Value: indefinido);
    procedure Sets2(const Value: indefinido);
    procedure Sets3(const Value: indefinido);
    procedure Setr1(const Value: indefinido);
    procedure Setr2(const Value: indefinido);
    procedure Setr3(const Value: indefinido);
    procedure Setr4(const Value: indefinido);
    procedure Setr5(const Value: indefinido);
    procedure Setr6(const Value: indefinido);
    procedure Setr7(const Value: indefinido);

public
    property a2     : indefinido read Fa2 write Seta2;
    property p2     : indefinido read Fp2 write Setp2;
    property e2     : indefinido read Fe2 write Sete2;
    property e3     : indefinido read Fe3 write Sete3;
    property d2     : indefinido read Fd2 write Setd2;
    property d3     : indefinido read Fd3 write Setd3;
    property d4     : indefinido read Fd4 write Setd4;
    property b2     : indefinido read Fb2 write Setb2;
    property c2     : indefinido read Fc2 write Setc2;
    property f2     : indefinido read Ff2 write Setf2;
    property f3     : indefinido read Ff3 write Setf3;
    property f4     : indefinido read Ff4 write Setf4;
    property t2     : indefinido read Ft2 write Sett2;
    property m2     : indefinido read Fm2 write Setm2;
    property l2     : indefinido read Fl2 write Setl2;
    property g2     : indefinido read Fg2 write Setg2;
    property h2     : indefinido read Fh2 write Seth2;
    property s2     : indefinido read Fs2 write Sets2;
    property s3     : indefinido read Fs3 write Sets3;
    property r1     : indefinido read Fr1 write Setr1;
    property r2     : indefinido read Fr2 write Setr2;
    property r3     : indefinido read Fr3 write Setr3;
    property r4     : indefinido read Fr4 write Setr4;
    property r5     : indefinido read Fr5 write Setr5;
    property r6     : indefinido read Fr6 write Setr6;
    property r7     : indefinido read Fr7 write Setr7;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPosservico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPosservico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fa2         := TModelERPosservico(Model).a2;
Self.Fp2         := TModelERPosservico(Model).p2;
Self.Fe2         := TModelERPosservico(Model).e2;
Self.Fe3         := TModelERPosservico(Model).e3;
Self.Fd2         := TModelERPosservico(Model).d2;
Self.Fd3         := TModelERPosservico(Model).d3;
Self.Fd4         := TModelERPosservico(Model).d4;
Self.Fb2         := TModelERPosservico(Model).b2;
Self.Fc2         := TModelERPosservico(Model).c2;
Self.Ff2         := TModelERPosservico(Model).f2;
Self.Ff3         := TModelERPosservico(Model).f3;
Self.Ff4         := TModelERPosservico(Model).f4;
Self.Ft2         := TModelERPosservico(Model).t2;
Self.Fm2         := TModelERPosservico(Model).m2;
Self.Fl2         := TModelERPosservico(Model).l2;
Self.Fg2         := TModelERPosservico(Model).g2;
Self.Fh2         := TModelERPosservico(Model).h2;
Self.Fs2         := TModelERPosservico(Model).s2;
Self.Fs3         := TModelERPosservico(Model).s3;
Self.Fr1         := TModelERPosservico(Model).r1;
Self.Fr2         := TModelERPosservico(Model).r2;
Self.Fr3         := TModelERPosservico(Model).r3;
Self.Fr4         := TModelERPosservico(Model).r4;
Self.Fr5         := TModelERPosservico(Model).r5;
Self.Fr6         := TModelERPosservico(Model).r6;
Self.Fr7         := TModelERPosservico(Model).r7;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPosservico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPosservico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPosservico.Seta2(const Value: Boolean);   
begin                
  Fa2 := Value;   
end;                 

procedure TModelERPosservico.Setp2(const Value: Boolean);   
begin                
  Fp2 := Value;   
end;                 

procedure TModelERPosservico.Sete2(const Value: Boolean);   
begin                
  Fe2 := Value;   
end;                 

procedure TModelERPosservico.Sete3(const Value: Boolean);   
begin                
  Fe3 := Value;   
end;                 

procedure TModelERPosservico.Setd2(const Value: Boolean);   
begin                
  Fd2 := Value;   
end;                 

procedure TModelERPosservico.Setd3(const Value: Boolean);   
begin                
  Fd3 := Value;   
end;                 

procedure TModelERPosservico.Setd4(const Value: Boolean);   
begin                
  Fd4 := Value;   
end;                 

procedure TModelERPosservico.Setb2(const Value: Boolean);   
begin                
  Fb2 := Value;   
end;                 

procedure TModelERPosservico.Setc2(const Value: Boolean);   
begin                
  Fc2 := Value;   
end;                 

procedure TModelERPosservico.Setf2(const Value: Boolean);   
begin                
  Ff2 := Value;   
end;                 

procedure TModelERPosservico.Setf3(const Value: Boolean);   
begin                
  Ff3 := Value;   
end;                 

procedure TModelERPosservico.Setf4(const Value: Boolean);   
begin                
  Ff4 := Value;   
end;                 

procedure TModelERPosservico.Sett2(const Value: Boolean);   
begin                
  Ft2 := Value;   
end;                 

procedure TModelERPosservico.Setm2(const Value: Boolean);   
begin                
  Fm2 := Value;   
end;                 

procedure TModelERPosservico.Setl2(const Value: Boolean);   
begin                
  Fl2 := Value;   
end;                 

procedure TModelERPosservico.Setg2(const Value: Boolean);   
begin                
  Fg2 := Value;   
end;                 

procedure TModelERPosservico.Seth2(const Value: Boolean);   
begin                
  Fh2 := Value;   
end;                 

procedure TModelERPosservico.Sets2(const Value: Boolean);   
begin                
  Fs2 := Value;   
end;                 

procedure TModelERPosservico.Sets3(const Value: Boolean);   
begin                
  Fs3 := Value;   
end;                 

procedure TModelERPosservico.Setr1(const Value: Boolean);   
begin                
  Fr1 := Value;   
end;                 

procedure TModelERPosservico.Setr2(const Value: Boolean);   
begin                
  Fr2 := Value;   
end;                 

procedure TModelERPosservico.Setr3(const Value: Boolean);   
begin                
  Fr3 := Value;   
end;                 

procedure TModelERPosservico.Setr4(const Value: Boolean);   
begin                
  Fr4 := Value;   
end;                 

procedure TModelERPosservico.Setr5(const Value: Boolean);   
begin                
  Fr5 := Value;   
end;                 

procedure TModelERPosservico.Setr6(const Value: Boolean);   
begin                
  Fr6 := Value;   
end;                 

procedure TModelERPosservico.Setr7(const Value: Boolean);   
begin                
  Fr7 := Value;   
end;                 


end.
