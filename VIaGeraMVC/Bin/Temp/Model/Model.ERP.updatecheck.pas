unit Model.ERP.update;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPupdate = class(TModelBase)

private
    Fid : Integer;
    Fdata_criacao : indefinido;
    Fchange_update : indefinido;
    Fviaerp : Boolean;
    Fviapdv : Boolean;
    Fviafood : Boolean;
    Fviaposto : Boolean;
    Fviapvd : Boolean;
    Fvianfe : Boolean;
    Fviasped : Boolean;
    Fvianfce : Boolean;
    Fviamdfe : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setdata_criacao(const Value: indefinido);
    procedure Setchange_update(const Value: indefinido);
    procedure Setviaerp(const Value: Boolean);
    procedure Setviapdv(const Value: Boolean);
    procedure Setviafood(const Value: Boolean);
    procedure Setviaposto(const Value: Boolean);
    procedure Setviapvd(const Value: Boolean);
    procedure Setvianfe(const Value: Boolean);
    procedure Setviasped(const Value: Boolean);
    procedure Setvianfce(const Value: Boolean);
    procedure Setviamdfe(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property data_criacao     : indefinido read Fdata_criacao write Setdata_criacao;
    property change_update     : indefinido read Fchange_update write Setchange_update;
    property viaerp     : Boolean read Fviaerp write Setviaerp;
    property viapdv     : Boolean read Fviapdv write Setviapdv;
    property viafood     : Boolean read Fviafood write Setviafood;
    property viaposto     : Boolean read Fviaposto write Setviaposto;
    property viapvd     : Boolean read Fviapvd write Setviapvd;
    property vianfe     : Boolean read Fvianfe write Setvianfe;
    property viasped     : Boolean read Fviasped write Setviasped;
    property vianfce     : Boolean read Fvianfce write Setvianfce;
    property viamdfe     : Boolean read Fviamdfe write Setviamdfe;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPupdate.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPupdate) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPupdate(Model).id;
Self.Fdata_criacao         := TModelERPupdate(Model).data_criacao;
Self.Fchange_update         := TModelERPupdate(Model).change_update;
Self.Fviaerp         := TModelERPupdate(Model).viaerp;
Self.Fviapdv         := TModelERPupdate(Model).viapdv;
Self.Fviafood         := TModelERPupdate(Model).viafood;
Self.Fviaposto         := TModelERPupdate(Model).viaposto;
Self.Fviapvd         := TModelERPupdate(Model).viapvd;
Self.Fvianfe         := TModelERPupdate(Model).vianfe;
Self.Fviasped         := TModelERPupdate(Model).viasped;
Self.Fvianfce         := TModelERPupdate(Model).vianfce;
Self.Fviamdfe         := TModelERPupdate(Model).viamdfe;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPupdate.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPupdate.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPupdate.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPupdate.Setdata_criacao(const Value: Boolean);   
begin                
  Fdata_criacao := Value;   
end;                 

procedure TModelERPupdate.Setchange_update(const Value: Boolean);   
begin                
  Fchange_update := Value;   
end;                 

procedure TModelERPupdate.Setviaerp(const Value: Boolean);   
begin                
  Fviaerp := Value;   
end;                 

procedure TModelERPupdate.Setviapdv(const Value: Boolean);   
begin                
  Fviapdv := Value;   
end;                 

procedure TModelERPupdate.Setviafood(const Value: Boolean);   
begin                
  Fviafood := Value;   
end;                 

procedure TModelERPupdate.Setviaposto(const Value: Boolean);   
begin                
  Fviaposto := Value;   
end;                 

procedure TModelERPupdate.Setviapvd(const Value: Boolean);   
begin                
  Fviapvd := Value;   
end;                 

procedure TModelERPupdate.Setvianfe(const Value: Boolean);   
begin                
  Fvianfe := Value;   
end;                 

procedure TModelERPupdate.Setviasped(const Value: Boolean);   
begin                
  Fviasped := Value;   
end;                 

procedure TModelERPupdate.Setvianfce(const Value: Boolean);   
begin                
  Fvianfce := Value;   
end;                 

procedure TModelERPupdate.Setviamdfe(const Value: Boolean);   
begin                
  Fviamdfe := Value;   
end;                 


end.
