unit Model.ERP.licenca;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlicenca = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fpagina : Integer;
    Fid_produto : Integer;
    Fid_bico : Integer;
    Fid_tanque : Integer;
    Fdescricao : WideString;
    Festoq_abert : Double;
    Fvol_entr : Double;
    Fvol_disp : Double;
    Fvol_saidas : Double;
    Festoq_escr : Double;
    Fval_aj_perda : Double;
    Fval_aj_ganho : Double;
    Ffech_fisico : Double;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setpagina(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setid_bico(const Value: Integer);
    procedure Setid_tanque(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setestoq_abert(const Value: Double);
    procedure Setvol_entr(const Value: Double);
    procedure Setvol_disp(const Value: Double);
    procedure Setvol_saidas(const Value: Double);
    procedure Setestoq_escr(const Value: Double);
    procedure Setval_aj_perda(const Value: Double);
    procedure Setval_aj_ganho(const Value: Double);
    procedure Setfech_fisico(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property pagina     : Integer read Fpagina write Setpagina;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property id_bico     : Integer read Fid_bico write Setid_bico;
    property id_tanque     : Integer read Fid_tanque write Setid_tanque;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property estoq_abert     : Double read Festoq_abert write Setestoq_abert;
    property vol_entr     : Double read Fvol_entr write Setvol_entr;
    property vol_disp     : Double read Fvol_disp write Setvol_disp;
    property vol_saidas     : Double read Fvol_saidas write Setvol_saidas;
    property estoq_escr     : Double read Festoq_escr write Setestoq_escr;
    property val_aj_perda     : Double read Fval_aj_perda write Setval_aj_perda;
    property val_aj_ganho     : Double read Fval_aj_ganho write Setval_aj_ganho;
    property fech_fisico     : Double read Ffech_fisico write Setfech_fisico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlicenca.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlicenca) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlicenca(Model).id;
Self.Fdata         := TModelERPlicenca(Model).data;
Self.Fpagina         := TModelERPlicenca(Model).pagina;
Self.Fid_produto         := TModelERPlicenca(Model).id_produto;
Self.Fid_bico         := TModelERPlicenca(Model).id_bico;
Self.Fid_tanque         := TModelERPlicenca(Model).id_tanque;
Self.Fdescricao         := TModelERPlicenca(Model).descricao;
Self.Festoq_abert         := TModelERPlicenca(Model).estoq_abert;
Self.Fvol_entr         := TModelERPlicenca(Model).vol_entr;
Self.Fvol_disp         := TModelERPlicenca(Model).vol_disp;
Self.Fvol_saidas         := TModelERPlicenca(Model).vol_saidas;
Self.Festoq_escr         := TModelERPlicenca(Model).estoq_escr;
Self.Fval_aj_perda         := TModelERPlicenca(Model).val_aj_perda;
Self.Fval_aj_ganho         := TModelERPlicenca(Model).val_aj_ganho;
Self.Ffech_fisico         := TModelERPlicenca(Model).fech_fisico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlicenca.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlicenca.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlicenca.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlicenca.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlicenca.Setpagina(const Value: Boolean);   
begin                
  Fpagina := Value;   
end;                 

procedure TModelERPlicenca.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPlicenca.Setid_bico(const Value: Boolean);   
begin                
  Fid_bico := Value;   
end;                 

procedure TModelERPlicenca.Setid_tanque(const Value: Boolean);   
begin                
  Fid_tanque := Value;   
end;                 

procedure TModelERPlicenca.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPlicenca.Setestoq_abert(const Value: Boolean);   
begin                
  Festoq_abert := Value;   
end;                 

procedure TModelERPlicenca.Setvol_entr(const Value: Boolean);   
begin                
  Fvol_entr := Value;   
end;                 

procedure TModelERPlicenca.Setvol_disp(const Value: Boolean);   
begin                
  Fvol_disp := Value;   
end;                 

procedure TModelERPlicenca.Setvol_saidas(const Value: Boolean);   
begin                
  Fvol_saidas := Value;   
end;                 

procedure TModelERPlicenca.Setestoq_escr(const Value: Boolean);   
begin                
  Festoq_escr := Value;   
end;                 

procedure TModelERPlicenca.Setval_aj_perda(const Value: Boolean);   
begin                
  Fval_aj_perda := Value;   
end;                 

procedure TModelERPlicenca.Setval_aj_ganho(const Value: Boolean);   
begin                
  Fval_aj_ganho := Value;   
end;                 

procedure TModelERPlicenca.Setfech_fisico(const Value: Boolean);   
begin                
  Ffech_fisico := Value;   
end;                 


end.
