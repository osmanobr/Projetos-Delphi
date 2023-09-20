unit Model.ERP.lote_controle_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlotecontroleitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnumero : Integer;
    Fdata : TDateTime;
    Fecf : WideString;
    Fcoo_inicial : Integer;
    Fcoo_final : Integer;
    Fgt_inicial : Double;
    Fgt_final : Double;
    Fcancelamento : Double;
    Fdesconto : Double;
    Fisento : Double;
    Fnaoincidencia : Double;
    Fst : Double;
    Faliq_1 : Double;
    Faliq_2 : Double;
    Faliq_3 : Double;
    Faliq_4 : Double;
    Faliq_5 : Double;
    Faliq_6 : Double;
    Fimposto : Double;
    Fcontador_reducao : Integer;
    Fclick : Boolean;
    Fobs : WideString;
    Fserie_ecf : WideString;
    Fcro : Double;
    Fvenda_bruta : Double;
    Fvenda_liquida : Double;
    Ftransmitida : WideString;
    Faliq_7 : Double;
    Faliq_8 : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnumero(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setecf(const Value: WideString);
    procedure Setcoo_inicial(const Value: Integer);
    procedure Setcoo_final(const Value: Integer);
    procedure Setgt_inicial(const Value: Double);
    procedure Setgt_final(const Value: Double);
    procedure Setcancelamento(const Value: Double);
    procedure Setdesconto(const Value: Double);
    procedure Setisento(const Value: Double);
    procedure Setnaoincidencia(const Value: Double);
    procedure Setst(const Value: Double);
    procedure Setaliq_1(const Value: Double);
    procedure Setaliq_2(const Value: Double);
    procedure Setaliq_3(const Value: Double);
    procedure Setaliq_4(const Value: Double);
    procedure Setaliq_5(const Value: Double);
    procedure Setaliq_6(const Value: Double);
    procedure Setimposto(const Value: Double);
    procedure Setcontador_reducao(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setobs(const Value: WideString);
    procedure Setserie_ecf(const Value: WideString);
    procedure Setcro(const Value: Double);
    procedure Setvenda_bruta(const Value: Double);
    procedure Setvenda_liquida(const Value: Double);
    procedure Settransmitida(const Value: WideString);
    procedure Setaliq_7(const Value: Double);
    procedure Setaliq_8(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property numero     : Integer read Fnumero write Setnumero;
    property data     : TDateTime read Fdata write Setdata;
    property ecf     : WideString read Fecf write Setecf;
    property coo_inicial     : Integer read Fcoo_inicial write Setcoo_inicial;
    property coo_final     : Integer read Fcoo_final write Setcoo_final;
    property gt_inicial     : Double read Fgt_inicial write Setgt_inicial;
    property gt_final     : Double read Fgt_final write Setgt_final;
    property cancelamento     : Double read Fcancelamento write Setcancelamento;
    property desconto     : Double read Fdesconto write Setdesconto;
    property isento     : Double read Fisento write Setisento;
    property naoincidencia     : Double read Fnaoincidencia write Setnaoincidencia;
    property st     : Double read Fst write Setst;
    property aliq_1     : Double read Faliq_1 write Setaliq_1;
    property aliq_2     : Double read Faliq_2 write Setaliq_2;
    property aliq_3     : Double read Faliq_3 write Setaliq_3;
    property aliq_4     : Double read Faliq_4 write Setaliq_4;
    property aliq_5     : Double read Faliq_5 write Setaliq_5;
    property aliq_6     : Double read Faliq_6 write Setaliq_6;
    property imposto     : Double read Fimposto write Setimposto;
    property contador_reducao     : Integer read Fcontador_reducao write Setcontador_reducao;
    property click     : Boolean read Fclick write Setclick;
    property obs     : WideString read Fobs write Setobs;
    property serie_ecf     : WideString read Fserie_ecf write Setserie_ecf;
    property cro     : Double read Fcro write Setcro;
    property venda_bruta     : Double read Fvenda_bruta write Setvenda_bruta;
    property venda_liquida     : Double read Fvenda_liquida write Setvenda_liquida;
    property transmitida     : WideString read Ftransmitida write Settransmitida;
    property aliq_7     : Double read Faliq_7 write Setaliq_7;
    property aliq_8     : Double read Faliq_8 write Setaliq_8;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlotecontroleitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlotecontroleitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlotecontroleitem(Model).id;
Self.Fid_empresa         := TModelERPlotecontroleitem(Model).id_empresa;
Self.Fnumero         := TModelERPlotecontroleitem(Model).numero;
Self.Fdata         := TModelERPlotecontroleitem(Model).data;
Self.Fecf         := TModelERPlotecontroleitem(Model).ecf;
Self.Fcoo_inicial         := TModelERPlotecontroleitem(Model).coo_inicial;
Self.Fcoo_final         := TModelERPlotecontroleitem(Model).coo_final;
Self.Fgt_inicial         := TModelERPlotecontroleitem(Model).gt_inicial;
Self.Fgt_final         := TModelERPlotecontroleitem(Model).gt_final;
Self.Fcancelamento         := TModelERPlotecontroleitem(Model).cancelamento;
Self.Fdesconto         := TModelERPlotecontroleitem(Model).desconto;
Self.Fisento         := TModelERPlotecontroleitem(Model).isento;
Self.Fnaoincidencia         := TModelERPlotecontroleitem(Model).naoincidencia;
Self.Fst         := TModelERPlotecontroleitem(Model).st;
Self.Faliq_1         := TModelERPlotecontroleitem(Model).aliq_1;
Self.Faliq_2         := TModelERPlotecontroleitem(Model).aliq_2;
Self.Faliq_3         := TModelERPlotecontroleitem(Model).aliq_3;
Self.Faliq_4         := TModelERPlotecontroleitem(Model).aliq_4;
Self.Faliq_5         := TModelERPlotecontroleitem(Model).aliq_5;
Self.Faliq_6         := TModelERPlotecontroleitem(Model).aliq_6;
Self.Fimposto         := TModelERPlotecontroleitem(Model).imposto;
Self.Fcontador_reducao         := TModelERPlotecontroleitem(Model).contador_reducao;
Self.Fclick         := TModelERPlotecontroleitem(Model).click;
Self.Fobs         := TModelERPlotecontroleitem(Model).obs;
Self.Fserie_ecf         := TModelERPlotecontroleitem(Model).serie_ecf;
Self.Fcro         := TModelERPlotecontroleitem(Model).cro;
Self.Fvenda_bruta         := TModelERPlotecontroleitem(Model).venda_bruta;
Self.Fvenda_liquida         := TModelERPlotecontroleitem(Model).venda_liquida;
Self.Ftransmitida         := TModelERPlotecontroleitem(Model).transmitida;
Self.Faliq_7         := TModelERPlotecontroleitem(Model).aliq_7;
Self.Faliq_8         := TModelERPlotecontroleitem(Model).aliq_8;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlotecontroleitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlotecontroleitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlotecontroleitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setecf(const Value: Boolean);   
begin                
  Fecf := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setcoo_inicial(const Value: Boolean);   
begin                
  Fcoo_inicial := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setcoo_final(const Value: Boolean);   
begin                
  Fcoo_final := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setgt_inicial(const Value: Boolean);   
begin                
  Fgt_inicial := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setgt_final(const Value: Boolean);   
begin                
  Fgt_final := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setcancelamento(const Value: Boolean);   
begin                
  Fcancelamento := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setisento(const Value: Boolean);   
begin                
  Fisento := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setnaoincidencia(const Value: Boolean);   
begin                
  Fnaoincidencia := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_1(const Value: Boolean);   
begin                
  Faliq_1 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_2(const Value: Boolean);   
begin                
  Faliq_2 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_3(const Value: Boolean);   
begin                
  Faliq_3 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_4(const Value: Boolean);   
begin                
  Faliq_4 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_5(const Value: Boolean);   
begin                
  Faliq_5 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_6(const Value: Boolean);   
begin                
  Faliq_6 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setimposto(const Value: Boolean);   
begin                
  Fimposto := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setcontador_reducao(const Value: Boolean);   
begin                
  Fcontador_reducao := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setserie_ecf(const Value: Boolean);   
begin                
  Fserie_ecf := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setcro(const Value: Boolean);   
begin                
  Fcro := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setvenda_bruta(const Value: Boolean);   
begin                
  Fvenda_bruta := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setvenda_liquida(const Value: Boolean);   
begin                
  Fvenda_liquida := Value;   
end;                 

procedure TModelERPlotecontroleitem.Settransmitida(const Value: Boolean);   
begin                
  Ftransmitida := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_7(const Value: Boolean);   
begin                
  Faliq_7 := Value;   
end;                 

procedure TModelERPlotecontroleitem.Setaliq_8(const Value: Boolean);   
begin                
  Faliq_8 := Value;   
end;                 


end.
