unit Model.ERP.mesa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesa = class(TModelBase)

private
    Fid : Integer;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fnome_caixa : WideString;
    Fstatus : WideString;
    Fdata_abre : TDateTime;
    Fhora_abre : WideString;
    Fdata_fecha : TDateTime;
    Fhora_fecha : WideString;
    Fvl_fundo : Double;
    Fvl_sangria : Double;
    Fid_forma1 : Integer;
    Fvl_forma1 : Double;
    Fdg_forma1 : Double;
    Fid_forma2 : Integer;
    Fvl_forma2 : Double;
    Fdg_forma2 : Double;
    Fid_forma3 : Integer;
    Fvl_forma3 : Double;
    Fdg_forma3 : Double;
    Fid_forma4 : Integer;
    Fvl_forma4 : Double;
    Fdg_forma4 : Double;
    Fid_forma5 : Integer;
    Fvl_forma5 : Double;
    Fdg_forma5 : Double;
    Fid_forma6 : Integer;
    Fvl_forma6 : Double;
    Fdg_forma6 : Double;
    Fid_forma7 : Integer;
    Fvl_forma7 : Double;
    Fdg_forma7 : Double;
    Fid_forma8 : Integer;
    Fvl_forma8 : Double;
    Fdg_forma8 : Double;
    Fid_forma9 : Integer;
    Fvl_forma9 : Double;
    Fdg_forma9 : Double;
    Fid_forma10 : Integer;
    Fvl_forma10 : Double;
    Fdg_forma10 : Double;
    Fvenda_bruta : Double;
    Fdg_outros : Double;
    Fdesconto : Double;
    Facrescimos : Double;
    Fvenda_liquida : Double;
    Fdg_total : Double;
    Fdg_diferenca : Double;
    Fcupons : Integer;
    Fitens : Integer;
    Fvl_abre : Double;
    Fdebcre : WideString;
    Fhistorico : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setnome_caixa(const Value: WideString);
    procedure Setstatus(const Value: WideString);
    procedure Setdata_abre(const Value: TDateTime);
    procedure Sethora_abre(const Value: WideString);
    procedure Setdata_fecha(const Value: TDateTime);
    procedure Sethora_fecha(const Value: WideString);
    procedure Setvl_fundo(const Value: Double);
    procedure Setvl_sangria(const Value: Double);
    procedure Setid_forma1(const Value: Integer);
    procedure Setvl_forma1(const Value: Double);
    procedure Setdg_forma1(const Value: Double);
    procedure Setid_forma2(const Value: Integer);
    procedure Setvl_forma2(const Value: Double);
    procedure Setdg_forma2(const Value: Double);
    procedure Setid_forma3(const Value: Integer);
    procedure Setvl_forma3(const Value: Double);
    procedure Setdg_forma3(const Value: Double);
    procedure Setid_forma4(const Value: Integer);
    procedure Setvl_forma4(const Value: Double);
    procedure Setdg_forma4(const Value: Double);
    procedure Setid_forma5(const Value: Integer);
    procedure Setvl_forma5(const Value: Double);
    procedure Setdg_forma5(const Value: Double);
    procedure Setid_forma6(const Value: Integer);
    procedure Setvl_forma6(const Value: Double);
    procedure Setdg_forma6(const Value: Double);
    procedure Setid_forma7(const Value: Integer);
    procedure Setvl_forma7(const Value: Double);
    procedure Setdg_forma7(const Value: Double);
    procedure Setid_forma8(const Value: Integer);
    procedure Setvl_forma8(const Value: Double);
    procedure Setdg_forma8(const Value: Double);
    procedure Setid_forma9(const Value: Integer);
    procedure Setvl_forma9(const Value: Double);
    procedure Setdg_forma9(const Value: Double);
    procedure Setid_forma10(const Value: Integer);
    procedure Setvl_forma10(const Value: Double);
    procedure Setdg_forma10(const Value: Double);
    procedure Setvenda_bruta(const Value: Double);
    procedure Setdg_outros(const Value: Double);
    procedure Setdesconto(const Value: Double);
    procedure Setacrescimos(const Value: Double);
    procedure Setvenda_liquida(const Value: Double);
    procedure Setdg_total(const Value: Double);
    procedure Setdg_diferenca(const Value: Double);
    procedure Setcupons(const Value: Integer);
    procedure Setitens(const Value: Integer);
    procedure Setvl_abre(const Value: Double);
    procedure Setdebcre(const Value: WideString);
    procedure Sethistorico(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property nome_caixa     : WideString read Fnome_caixa write Setnome_caixa;
    property status     : WideString read Fstatus write Setstatus;
    property data_abre     : TDateTime read Fdata_abre write Setdata_abre;
    property hora_abre     : WideString read Fhora_abre write Sethora_abre;
    property data_fecha     : TDateTime read Fdata_fecha write Setdata_fecha;
    property hora_fecha     : WideString read Fhora_fecha write Sethora_fecha;
    property vl_fundo     : Double read Fvl_fundo write Setvl_fundo;
    property vl_sangria     : Double read Fvl_sangria write Setvl_sangria;
    property id_forma1     : Integer read Fid_forma1 write Setid_forma1;
    property vl_forma1     : Double read Fvl_forma1 write Setvl_forma1;
    property dg_forma1     : Double read Fdg_forma1 write Setdg_forma1;
    property id_forma2     : Integer read Fid_forma2 write Setid_forma2;
    property vl_forma2     : Double read Fvl_forma2 write Setvl_forma2;
    property dg_forma2     : Double read Fdg_forma2 write Setdg_forma2;
    property id_forma3     : Integer read Fid_forma3 write Setid_forma3;
    property vl_forma3     : Double read Fvl_forma3 write Setvl_forma3;
    property dg_forma3     : Double read Fdg_forma3 write Setdg_forma3;
    property id_forma4     : Integer read Fid_forma4 write Setid_forma4;
    property vl_forma4     : Double read Fvl_forma4 write Setvl_forma4;
    property dg_forma4     : Double read Fdg_forma4 write Setdg_forma4;
    property id_forma5     : Integer read Fid_forma5 write Setid_forma5;
    property vl_forma5     : Double read Fvl_forma5 write Setvl_forma5;
    property dg_forma5     : Double read Fdg_forma5 write Setdg_forma5;
    property id_forma6     : Integer read Fid_forma6 write Setid_forma6;
    property vl_forma6     : Double read Fvl_forma6 write Setvl_forma6;
    property dg_forma6     : Double read Fdg_forma6 write Setdg_forma6;
    property id_forma7     : Integer read Fid_forma7 write Setid_forma7;
    property vl_forma7     : Double read Fvl_forma7 write Setvl_forma7;
    property dg_forma7     : Double read Fdg_forma7 write Setdg_forma7;
    property id_forma8     : Integer read Fid_forma8 write Setid_forma8;
    property vl_forma8     : Double read Fvl_forma8 write Setvl_forma8;
    property dg_forma8     : Double read Fdg_forma8 write Setdg_forma8;
    property id_forma9     : Integer read Fid_forma9 write Setid_forma9;
    property vl_forma9     : Double read Fvl_forma9 write Setvl_forma9;
    property dg_forma9     : Double read Fdg_forma9 write Setdg_forma9;
    property id_forma10     : Integer read Fid_forma10 write Setid_forma10;
    property vl_forma10     : Double read Fvl_forma10 write Setvl_forma10;
    property dg_forma10     : Double read Fdg_forma10 write Setdg_forma10;
    property venda_bruta     : Double read Fvenda_bruta write Setvenda_bruta;
    property dg_outros     : Double read Fdg_outros write Setdg_outros;
    property desconto     : Double read Fdesconto write Setdesconto;
    property acrescimos     : Double read Facrescimos write Setacrescimos;
    property venda_liquida     : Double read Fvenda_liquida write Setvenda_liquida;
    property dg_total     : Double read Fdg_total write Setdg_total;
    property dg_diferenca     : Double read Fdg_diferenca write Setdg_diferenca;
    property cupons     : Integer read Fcupons write Setcupons;
    property itens     : Integer read Fitens write Setitens;
    property vl_abre     : Double read Fvl_abre write Setvl_abre;
    property debcre     : WideString read Fdebcre write Setdebcre;
    property historico     : WideString read Fhistorico write Sethistorico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesa(Model).id;
Self.Fid_caixa         := TModelERPmesa(Model).id_caixa;
Self.Fid_usuario         := TModelERPmesa(Model).id_usuario;
Self.Fnome_caixa         := TModelERPmesa(Model).nome_caixa;
Self.Fstatus         := TModelERPmesa(Model).status;
Self.Fdata_abre         := TModelERPmesa(Model).data_abre;
Self.Fhora_abre         := TModelERPmesa(Model).hora_abre;
Self.Fdata_fecha         := TModelERPmesa(Model).data_fecha;
Self.Fhora_fecha         := TModelERPmesa(Model).hora_fecha;
Self.Fvl_fundo         := TModelERPmesa(Model).vl_fundo;
Self.Fvl_sangria         := TModelERPmesa(Model).vl_sangria;
Self.Fid_forma1         := TModelERPmesa(Model).id_forma1;
Self.Fvl_forma1         := TModelERPmesa(Model).vl_forma1;
Self.Fdg_forma1         := TModelERPmesa(Model).dg_forma1;
Self.Fid_forma2         := TModelERPmesa(Model).id_forma2;
Self.Fvl_forma2         := TModelERPmesa(Model).vl_forma2;
Self.Fdg_forma2         := TModelERPmesa(Model).dg_forma2;
Self.Fid_forma3         := TModelERPmesa(Model).id_forma3;
Self.Fvl_forma3         := TModelERPmesa(Model).vl_forma3;
Self.Fdg_forma3         := TModelERPmesa(Model).dg_forma3;
Self.Fid_forma4         := TModelERPmesa(Model).id_forma4;
Self.Fvl_forma4         := TModelERPmesa(Model).vl_forma4;
Self.Fdg_forma4         := TModelERPmesa(Model).dg_forma4;
Self.Fid_forma5         := TModelERPmesa(Model).id_forma5;
Self.Fvl_forma5         := TModelERPmesa(Model).vl_forma5;
Self.Fdg_forma5         := TModelERPmesa(Model).dg_forma5;
Self.Fid_forma6         := TModelERPmesa(Model).id_forma6;
Self.Fvl_forma6         := TModelERPmesa(Model).vl_forma6;
Self.Fdg_forma6         := TModelERPmesa(Model).dg_forma6;
Self.Fid_forma7         := TModelERPmesa(Model).id_forma7;
Self.Fvl_forma7         := TModelERPmesa(Model).vl_forma7;
Self.Fdg_forma7         := TModelERPmesa(Model).dg_forma7;
Self.Fid_forma8         := TModelERPmesa(Model).id_forma8;
Self.Fvl_forma8         := TModelERPmesa(Model).vl_forma8;
Self.Fdg_forma8         := TModelERPmesa(Model).dg_forma8;
Self.Fid_forma9         := TModelERPmesa(Model).id_forma9;
Self.Fvl_forma9         := TModelERPmesa(Model).vl_forma9;
Self.Fdg_forma9         := TModelERPmesa(Model).dg_forma9;
Self.Fid_forma10         := TModelERPmesa(Model).id_forma10;
Self.Fvl_forma10         := TModelERPmesa(Model).vl_forma10;
Self.Fdg_forma10         := TModelERPmesa(Model).dg_forma10;
Self.Fvenda_bruta         := TModelERPmesa(Model).venda_bruta;
Self.Fdg_outros         := TModelERPmesa(Model).dg_outros;
Self.Fdesconto         := TModelERPmesa(Model).desconto;
Self.Facrescimos         := TModelERPmesa(Model).acrescimos;
Self.Fvenda_liquida         := TModelERPmesa(Model).venda_liquida;
Self.Fdg_total         := TModelERPmesa(Model).dg_total;
Self.Fdg_diferenca         := TModelERPmesa(Model).dg_diferenca;
Self.Fcupons         := TModelERPmesa(Model).cupons;
Self.Fitens         := TModelERPmesa(Model).itens;
Self.Fvl_abre         := TModelERPmesa(Model).vl_abre;
Self.Fdebcre         := TModelERPmesa(Model).debcre;
Self.Fhistorico         := TModelERPmesa(Model).historico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesa.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPmesa.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPmesa.Setnome_caixa(const Value: Boolean);   
begin                
  Fnome_caixa := Value;   
end;                 

procedure TModelERPmesa.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPmesa.Setdata_abre(const Value: Boolean);   
begin                
  Fdata_abre := Value;   
end;                 

procedure TModelERPmesa.Sethora_abre(const Value: Boolean);   
begin                
  Fhora_abre := Value;   
end;                 

procedure TModelERPmesa.Setdata_fecha(const Value: Boolean);   
begin                
  Fdata_fecha := Value;   
end;                 

procedure TModelERPmesa.Sethora_fecha(const Value: Boolean);   
begin                
  Fhora_fecha := Value;   
end;                 

procedure TModelERPmesa.Setvl_fundo(const Value: Boolean);   
begin                
  Fvl_fundo := Value;   
end;                 

procedure TModelERPmesa.Setvl_sangria(const Value: Boolean);   
begin                
  Fvl_sangria := Value;   
end;                 

procedure TModelERPmesa.Setid_forma1(const Value: Boolean);   
begin                
  Fid_forma1 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma1(const Value: Boolean);   
begin                
  Fvl_forma1 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma1(const Value: Boolean);   
begin                
  Fdg_forma1 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma2(const Value: Boolean);   
begin                
  Fid_forma2 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma2(const Value: Boolean);   
begin                
  Fvl_forma2 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma2(const Value: Boolean);   
begin                
  Fdg_forma2 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma3(const Value: Boolean);   
begin                
  Fid_forma3 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma3(const Value: Boolean);   
begin                
  Fvl_forma3 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma3(const Value: Boolean);   
begin                
  Fdg_forma3 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma4(const Value: Boolean);   
begin                
  Fid_forma4 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma4(const Value: Boolean);   
begin                
  Fvl_forma4 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma4(const Value: Boolean);   
begin                
  Fdg_forma4 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma5(const Value: Boolean);   
begin                
  Fid_forma5 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma5(const Value: Boolean);   
begin                
  Fvl_forma5 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma5(const Value: Boolean);   
begin                
  Fdg_forma5 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma6(const Value: Boolean);   
begin                
  Fid_forma6 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma6(const Value: Boolean);   
begin                
  Fvl_forma6 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma6(const Value: Boolean);   
begin                
  Fdg_forma6 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma7(const Value: Boolean);   
begin                
  Fid_forma7 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma7(const Value: Boolean);   
begin                
  Fvl_forma7 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma7(const Value: Boolean);   
begin                
  Fdg_forma7 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma8(const Value: Boolean);   
begin                
  Fid_forma8 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma8(const Value: Boolean);   
begin                
  Fvl_forma8 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma8(const Value: Boolean);   
begin                
  Fdg_forma8 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma9(const Value: Boolean);   
begin                
  Fid_forma9 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma9(const Value: Boolean);   
begin                
  Fvl_forma9 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma9(const Value: Boolean);   
begin                
  Fdg_forma9 := Value;   
end;                 

procedure TModelERPmesa.Setid_forma10(const Value: Boolean);   
begin                
  Fid_forma10 := Value;   
end;                 

procedure TModelERPmesa.Setvl_forma10(const Value: Boolean);   
begin                
  Fvl_forma10 := Value;   
end;                 

procedure TModelERPmesa.Setdg_forma10(const Value: Boolean);   
begin                
  Fdg_forma10 := Value;   
end;                 

procedure TModelERPmesa.Setvenda_bruta(const Value: Boolean);   
begin                
  Fvenda_bruta := Value;   
end;                 

procedure TModelERPmesa.Setdg_outros(const Value: Boolean);   
begin                
  Fdg_outros := Value;   
end;                 

procedure TModelERPmesa.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPmesa.Setacrescimos(const Value: Boolean);   
begin                
  Facrescimos := Value;   
end;                 

procedure TModelERPmesa.Setvenda_liquida(const Value: Boolean);   
begin                
  Fvenda_liquida := Value;   
end;                 

procedure TModelERPmesa.Setdg_total(const Value: Boolean);   
begin                
  Fdg_total := Value;   
end;                 

procedure TModelERPmesa.Setdg_diferenca(const Value: Boolean);   
begin                
  Fdg_diferenca := Value;   
end;                 

procedure TModelERPmesa.Setcupons(const Value: Boolean);   
begin                
  Fcupons := Value;   
end;                 

procedure TModelERPmesa.Setitens(const Value: Boolean);   
begin                
  Fitens := Value;   
end;                 

procedure TModelERPmesa.Setvl_abre(const Value: Boolean);   
begin                
  Fvl_abre := Value;   
end;                 

procedure TModelERPmesa.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPmesa.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 


end.