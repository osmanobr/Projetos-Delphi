unit Model.ERP.temp_etiquetas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtempetiquetas = class(TModelBase)

private
    Fid : Integer;
    Fhd : indefinido;
    Fip : indefinido;
    Fnome : indefinido;
    Floja : Integer;
    Fdatahora : indefinido;
    Fviaerp : Boolean;
    Fviapdv : Boolean;
    Fviafood : Boolean;
    Fviaposto : Boolean;
    Fviapvd : Boolean;
    Fvianfe : Boolean;
    Fviasped : Boolean;
    Fnotify : Boolean;
    Fuse_vianfe : Boolean;
    Fuse_viasped : Boolean;
    Fuse_vianfce : Boolean;
    Fid_terminal : indefinido;
    Fvianfce : Boolean;
    Frel_zebrado : Boolean;
    Fversao_browser : Integer;
    Fport_impr : indefinido;
    Fmodelo : Integer;
    Fsalto_linha : Integer;
    Fbaud : Integer;
    Fdata : Integer;
    Fparity : Integer;
    Fstop : Integer;
    Fhandshake : Integer;
    Fhardflow : Boolean;
    Fsoftflow : Boolean;
    Fterm_matr : Boolean;
    Fserial : Boolean;
    Fespaco_entre_linhas : Integer;
    Fviamdfe : Boolean;
    Fuse_viamdfe : Boolean;

    procedure Setid(const Value: Integer);
    procedure Sethd(const Value: indefinido);
    procedure Setip(const Value: indefinido);
    procedure Setnome(const Value: indefinido);
    procedure Setloja(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);
    procedure Setviaerp(const Value: Boolean);
    procedure Setviapdv(const Value: Boolean);
    procedure Setviafood(const Value: Boolean);
    procedure Setviaposto(const Value: Boolean);
    procedure Setviapvd(const Value: Boolean);
    procedure Setvianfe(const Value: Boolean);
    procedure Setviasped(const Value: Boolean);
    procedure Setnotify(const Value: Boolean);
    procedure Setuse_vianfe(const Value: Boolean);
    procedure Setuse_viasped(const Value: Boolean);
    procedure Setuse_vianfce(const Value: Boolean);
    procedure Setid_terminal(const Value: indefinido);
    procedure Setvianfce(const Value: Boolean);
    procedure Setrel_zebrado(const Value: Boolean);
    procedure Setversao_browser(const Value: Integer);
    procedure Setport_impr(const Value: indefinido);
    procedure Setmodelo(const Value: Integer);
    procedure Setsalto_linha(const Value: Integer);
    procedure Setbaud(const Value: Integer);
    procedure Setdata(const Value: Integer);
    procedure Setparity(const Value: Integer);
    procedure Setstop(const Value: Integer);
    procedure Sethandshake(const Value: Integer);
    procedure Sethardflow(const Value: Boolean);
    procedure Setsoftflow(const Value: Boolean);
    procedure Setterm_matr(const Value: Boolean);
    procedure Setserial(const Value: Boolean);
    procedure Setespaco_entre_linhas(const Value: Integer);
    procedure Setviamdfe(const Value: Boolean);
    procedure Setuse_viamdfe(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property hd     : indefinido read Fhd write Sethd;
    property ip     : indefinido read Fip write Setip;
    property nome     : indefinido read Fnome write Setnome;
    property loja     : Integer read Floja write Setloja;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property viaerp     : Boolean read Fviaerp write Setviaerp;
    property viapdv     : Boolean read Fviapdv write Setviapdv;
    property viafood     : Boolean read Fviafood write Setviafood;
    property viaposto     : Boolean read Fviaposto write Setviaposto;
    property viapvd     : Boolean read Fviapvd write Setviapvd;
    property vianfe     : Boolean read Fvianfe write Setvianfe;
    property viasped     : Boolean read Fviasped write Setviasped;
    property notify     : Boolean read Fnotify write Setnotify;
    property use_vianfe     : Boolean read Fuse_vianfe write Setuse_vianfe;
    property use_viasped     : Boolean read Fuse_viasped write Setuse_viasped;
    property use_vianfce     : Boolean read Fuse_vianfce write Setuse_vianfce;
    property id_terminal     : indefinido read Fid_terminal write Setid_terminal;
    property vianfce     : Boolean read Fvianfce write Setvianfce;
    property rel_zebrado     : Boolean read Frel_zebrado write Setrel_zebrado;
    property versao_browser     : Integer read Fversao_browser write Setversao_browser;
    property port_impr     : indefinido read Fport_impr write Setport_impr;
    property modelo     : Integer read Fmodelo write Setmodelo;
    property salto_linha     : Integer read Fsalto_linha write Setsalto_linha;
    property baud     : Integer read Fbaud write Setbaud;
    property data     : Integer read Fdata write Setdata;
    property parity     : Integer read Fparity write Setparity;
    property stop     : Integer read Fstop write Setstop;
    property handshake     : Integer read Fhandshake write Sethandshake;
    property hardflow     : Boolean read Fhardflow write Sethardflow;
    property softflow     : Boolean read Fsoftflow write Setsoftflow;
    property term_matr     : Boolean read Fterm_matr write Setterm_matr;
    property serial     : Boolean read Fserial write Setserial;
    property espaco_entre_linhas     : Integer read Fespaco_entre_linhas write Setespaco_entre_linhas;
    property viamdfe     : Boolean read Fviamdfe write Setviamdfe;
    property use_viamdfe     : Boolean read Fuse_viamdfe write Setuse_viamdfe;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtempetiquetas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtempetiquetas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtempetiquetas(Model).id;
Self.Fhd         := TModelERPtempetiquetas(Model).hd;
Self.Fip         := TModelERPtempetiquetas(Model).ip;
Self.Fnome         := TModelERPtempetiquetas(Model).nome;
Self.Floja         := TModelERPtempetiquetas(Model).loja;
Self.Fdatahora         := TModelERPtempetiquetas(Model).datahora;
Self.Fviaerp         := TModelERPtempetiquetas(Model).viaerp;
Self.Fviapdv         := TModelERPtempetiquetas(Model).viapdv;
Self.Fviafood         := TModelERPtempetiquetas(Model).viafood;
Self.Fviaposto         := TModelERPtempetiquetas(Model).viaposto;
Self.Fviapvd         := TModelERPtempetiquetas(Model).viapvd;
Self.Fvianfe         := TModelERPtempetiquetas(Model).vianfe;
Self.Fviasped         := TModelERPtempetiquetas(Model).viasped;
Self.Fnotify         := TModelERPtempetiquetas(Model).notify;
Self.Fuse_vianfe         := TModelERPtempetiquetas(Model).use_vianfe;
Self.Fuse_viasped         := TModelERPtempetiquetas(Model).use_viasped;
Self.Fuse_vianfce         := TModelERPtempetiquetas(Model).use_vianfce;
Self.Fid_terminal         := TModelERPtempetiquetas(Model).id_terminal;
Self.Fvianfce         := TModelERPtempetiquetas(Model).vianfce;
Self.Frel_zebrado         := TModelERPtempetiquetas(Model).rel_zebrado;
Self.Fversao_browser         := TModelERPtempetiquetas(Model).versao_browser;
Self.Fport_impr         := TModelERPtempetiquetas(Model).port_impr;
Self.Fmodelo         := TModelERPtempetiquetas(Model).modelo;
Self.Fsalto_linha         := TModelERPtempetiquetas(Model).salto_linha;
Self.Fbaud         := TModelERPtempetiquetas(Model).baud;
Self.Fdata         := TModelERPtempetiquetas(Model).data;
Self.Fparity         := TModelERPtempetiquetas(Model).parity;
Self.Fstop         := TModelERPtempetiquetas(Model).stop;
Self.Fhandshake         := TModelERPtempetiquetas(Model).handshake;
Self.Fhardflow         := TModelERPtempetiquetas(Model).hardflow;
Self.Fsoftflow         := TModelERPtempetiquetas(Model).softflow;
Self.Fterm_matr         := TModelERPtempetiquetas(Model).term_matr;
Self.Fserial         := TModelERPtempetiquetas(Model).serial;
Self.Fespaco_entre_linhas         := TModelERPtempetiquetas(Model).espaco_entre_linhas;
Self.Fviamdfe         := TModelERPtempetiquetas(Model).viamdfe;
Self.Fuse_viamdfe         := TModelERPtempetiquetas(Model).use_viamdfe;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtempetiquetas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtempetiquetas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtempetiquetas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtempetiquetas.Sethd(const Value: Boolean);   
begin                
  Fhd := Value;   
end;                 

procedure TModelERPtempetiquetas.Setip(const Value: Boolean);   
begin                
  Fip := Value;   
end;                 

procedure TModelERPtempetiquetas.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPtempetiquetas.Setloja(const Value: Boolean);   
begin                
  Floja := Value;   
end;                 

procedure TModelERPtempetiquetas.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviaerp(const Value: Boolean);   
begin                
  Fviaerp := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviapdv(const Value: Boolean);   
begin                
  Fviapdv := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviafood(const Value: Boolean);   
begin                
  Fviafood := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviaposto(const Value: Boolean);   
begin                
  Fviaposto := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviapvd(const Value: Boolean);   
begin                
  Fviapvd := Value;   
end;                 

procedure TModelERPtempetiquetas.Setvianfe(const Value: Boolean);   
begin                
  Fvianfe := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviasped(const Value: Boolean);   
begin                
  Fviasped := Value;   
end;                 

procedure TModelERPtempetiquetas.Setnotify(const Value: Boolean);   
begin                
  Fnotify := Value;   
end;                 

procedure TModelERPtempetiquetas.Setuse_vianfe(const Value: Boolean);   
begin                
  Fuse_vianfe := Value;   
end;                 

procedure TModelERPtempetiquetas.Setuse_viasped(const Value: Boolean);   
begin                
  Fuse_viasped := Value;   
end;                 

procedure TModelERPtempetiquetas.Setuse_vianfce(const Value: Boolean);   
begin                
  Fuse_vianfce := Value;   
end;                 

procedure TModelERPtempetiquetas.Setid_terminal(const Value: Boolean);   
begin                
  Fid_terminal := Value;   
end;                 

procedure TModelERPtempetiquetas.Setvianfce(const Value: Boolean);   
begin                
  Fvianfce := Value;   
end;                 

procedure TModelERPtempetiquetas.Setrel_zebrado(const Value: Boolean);   
begin                
  Frel_zebrado := Value;   
end;                 

procedure TModelERPtempetiquetas.Setversao_browser(const Value: Boolean);   
begin                
  Fversao_browser := Value;   
end;                 

procedure TModelERPtempetiquetas.Setport_impr(const Value: Boolean);   
begin                
  Fport_impr := Value;   
end;                 

procedure TModelERPtempetiquetas.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPtempetiquetas.Setsalto_linha(const Value: Boolean);   
begin                
  Fsalto_linha := Value;   
end;                 

procedure TModelERPtempetiquetas.Setbaud(const Value: Boolean);   
begin                
  Fbaud := Value;   
end;                 

procedure TModelERPtempetiquetas.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPtempetiquetas.Setparity(const Value: Boolean);   
begin                
  Fparity := Value;   
end;                 

procedure TModelERPtempetiquetas.Setstop(const Value: Boolean);   
begin                
  Fstop := Value;   
end;                 

procedure TModelERPtempetiquetas.Sethandshake(const Value: Boolean);   
begin                
  Fhandshake := Value;   
end;                 

procedure TModelERPtempetiquetas.Sethardflow(const Value: Boolean);   
begin                
  Fhardflow := Value;   
end;                 

procedure TModelERPtempetiquetas.Setsoftflow(const Value: Boolean);   
begin                
  Fsoftflow := Value;   
end;                 

procedure TModelERPtempetiquetas.Setterm_matr(const Value: Boolean);   
begin                
  Fterm_matr := Value;   
end;                 

procedure TModelERPtempetiquetas.Setserial(const Value: Boolean);   
begin                
  Fserial := Value;   
end;                 

procedure TModelERPtempetiquetas.Setespaco_entre_linhas(const Value: Boolean);   
begin                
  Fespaco_entre_linhas := Value;   
end;                 

procedure TModelERPtempetiquetas.Setviamdfe(const Value: Boolean);   
begin                
  Fviamdfe := Value;   
end;                 

procedure TModelERPtempetiquetas.Setuse_viamdfe(const Value: Boolean);   
begin                
  Fuse_viamdfe := Value;   
end;                 


end.
