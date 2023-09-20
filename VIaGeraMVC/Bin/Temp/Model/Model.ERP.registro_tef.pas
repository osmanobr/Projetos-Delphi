unit Model.ERP.registro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPregistro = class(TModelBase)

private
    Fid : Integer;
    Fid_cupons : Integer;
    Fcoo : WideString;
    Fccf : WideString;
    Fcodfin : WideString;
    Fnsu : WideString;
    Fnsuhost : WideString;
    Fdata : indefinido;
    Fvalor : Double;
    Fmodalxxnn : WideString;
    Fmodaltexto : WideString;
    Fprimeiravia : indefinido;
    Fsegundavia : indefinido;
    Frede : WideString;
    Fimpresso : Boolean;
    Fbandeira : WideString;
    Fbin : WideString;
    Festorno : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setcoo(const Value: WideString);
    procedure Setccf(const Value: WideString);
    procedure Setcodfin(const Value: WideString);
    procedure Setnsu(const Value: WideString);
    procedure Setnsuhost(const Value: WideString);
    procedure Setdata(const Value: indefinido);
    procedure Setvalor(const Value: Double);
    procedure Setmodalxxnn(const Value: WideString);
    procedure Setmodaltexto(const Value: WideString);
    procedure Setprimeiravia(const Value: indefinido);
    procedure Setsegundavia(const Value: indefinido);
    procedure Setrede(const Value: WideString);
    procedure Setimpresso(const Value: Boolean);
    procedure Setbandeira(const Value: WideString);
    procedure Setbin(const Value: WideString);
    procedure Setestorno(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property coo     : WideString read Fcoo write Setcoo;
    property ccf     : WideString read Fccf write Setccf;
    property codfin     : WideString read Fcodfin write Setcodfin;
    property nsu     : WideString read Fnsu write Setnsu;
    property nsuhost     : WideString read Fnsuhost write Setnsuhost;
    property data     : indefinido read Fdata write Setdata;
    property valor     : Double read Fvalor write Setvalor;
    property modalxxnn     : WideString read Fmodalxxnn write Setmodalxxnn;
    property modaltexto     : WideString read Fmodaltexto write Setmodaltexto;
    property primeiravia     : indefinido read Fprimeiravia write Setprimeiravia;
    property segundavia     : indefinido read Fsegundavia write Setsegundavia;
    property rede     : WideString read Frede write Setrede;
    property impresso     : Boolean read Fimpresso write Setimpresso;
    property bandeira     : WideString read Fbandeira write Setbandeira;
    property bin     : WideString read Fbin write Setbin;
    property estorno     : Boolean read Festorno write Setestorno;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPregistro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPregistro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPregistro(Model).id;
Self.Fid_cupons         := TModelERPregistro(Model).id_cupons;
Self.Fcoo         := TModelERPregistro(Model).coo;
Self.Fccf         := TModelERPregistro(Model).ccf;
Self.Fcodfin         := TModelERPregistro(Model).codfin;
Self.Fnsu         := TModelERPregistro(Model).nsu;
Self.Fnsuhost         := TModelERPregistro(Model).nsuhost;
Self.Fdata         := TModelERPregistro(Model).data;
Self.Fvalor         := TModelERPregistro(Model).valor;
Self.Fmodalxxnn         := TModelERPregistro(Model).modalxxnn;
Self.Fmodaltexto         := TModelERPregistro(Model).modaltexto;
Self.Fprimeiravia         := TModelERPregistro(Model).primeiravia;
Self.Fsegundavia         := TModelERPregistro(Model).segundavia;
Self.Frede         := TModelERPregistro(Model).rede;
Self.Fimpresso         := TModelERPregistro(Model).impresso;
Self.Fbandeira         := TModelERPregistro(Model).bandeira;
Self.Fbin         := TModelERPregistro(Model).bin;
Self.Festorno         := TModelERPregistro(Model).estorno;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPregistro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPregistro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPregistro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPregistro.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPregistro.Setcoo(const Value: Boolean);   
begin                
  Fcoo := Value;   
end;                 

procedure TModelERPregistro.Setccf(const Value: Boolean);   
begin                
  Fccf := Value;   
end;                 

procedure TModelERPregistro.Setcodfin(const Value: Boolean);   
begin                
  Fcodfin := Value;   
end;                 

procedure TModelERPregistro.Setnsu(const Value: Boolean);   
begin                
  Fnsu := Value;   
end;                 

procedure TModelERPregistro.Setnsuhost(const Value: Boolean);   
begin                
  Fnsuhost := Value;   
end;                 

procedure TModelERPregistro.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPregistro.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPregistro.Setmodalxxnn(const Value: Boolean);   
begin                
  Fmodalxxnn := Value;   
end;                 

procedure TModelERPregistro.Setmodaltexto(const Value: Boolean);   
begin                
  Fmodaltexto := Value;   
end;                 

procedure TModelERPregistro.Setprimeiravia(const Value: Boolean);   
begin                
  Fprimeiravia := Value;   
end;                 

procedure TModelERPregistro.Setsegundavia(const Value: Boolean);   
begin                
  Fsegundavia := Value;   
end;                 

procedure TModelERPregistro.Setrede(const Value: Boolean);   
begin                
  Frede := Value;   
end;                 

procedure TModelERPregistro.Setimpresso(const Value: Boolean);   
begin                
  Fimpresso := Value;   
end;                 

procedure TModelERPregistro.Setbandeira(const Value: Boolean);   
begin                
  Fbandeira := Value;   
end;                 

procedure TModelERPregistro.Setbin(const Value: Boolean);   
begin                
  Fbin := Value;   
end;                 

procedure TModelERPregistro.Setestorno(const Value: Boolean);   
begin                
  Festorno := Value;   
end;                 


end.
