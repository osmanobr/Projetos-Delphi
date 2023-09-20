unit Model.ERP.carga_pdv_historico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcargapdvhistorico = class(TModelBase)

private
    Fid : Integer;
    Fid_carga : Integer;
    Fid_venda : Integer;
    Fnota : Integer;
    Fid_rota : Integer;
    Fcupom : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_vendedor : Integer;
    Fdata : TDateTime;
    Fid_forma : Integer;
    Fcobranca : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fvalor : Double;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_carga(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setnota(const Value: Integer);
    procedure Setid_rota(const Value: Integer);
    procedure Setcupom(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setcobranca(const Value: WideString);
    procedure Setpeso_bruto(const Value: Double);
    procedure Setpeso_liquido(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_carga     : Integer read Fid_carga write Setid_carga;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property nota     : Integer read Fnota write Setnota;
    property id_rota     : Integer read Fid_rota write Setid_rota;
    property cupom     : Integer read Fcupom write Setcupom;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property data     : TDateTime read Fdata write Setdata;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property cobranca     : WideString read Fcobranca write Setcobranca;
    property peso_bruto     : Double read Fpeso_bruto write Setpeso_bruto;
    property peso_liquido     : Double read Fpeso_liquido write Setpeso_liquido;
    property valor     : Double read Fvalor write Setvalor;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcargapdvhistorico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcargapdvhistorico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcargapdvhistorico(Model).id;
Self.Fid_carga         := TModelERPcargapdvhistorico(Model).id_carga;
Self.Fid_venda         := TModelERPcargapdvhistorico(Model).id_venda;
Self.Fnota         := TModelERPcargapdvhistorico(Model).nota;
Self.Fid_rota         := TModelERPcargapdvhistorico(Model).id_rota;
Self.Fcupom         := TModelERPcargapdvhistorico(Model).cupom;
Self.Fid_cliente         := TModelERPcargapdvhistorico(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcargapdvhistorico(Model).nome_cliente;
Self.Fid_vendedor         := TModelERPcargapdvhistorico(Model).id_vendedor;
Self.Fdata         := TModelERPcargapdvhistorico(Model).data;
Self.Fid_forma         := TModelERPcargapdvhistorico(Model).id_forma;
Self.Fcobranca         := TModelERPcargapdvhistorico(Model).cobranca;
Self.Fpeso_bruto         := TModelERPcargapdvhistorico(Model).peso_bruto;
Self.Fpeso_liquido         := TModelERPcargapdvhistorico(Model).peso_liquido;
Self.Fvalor         := TModelERPcargapdvhistorico(Model).valor;
Self.Fclick         := TModelERPcargapdvhistorico(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcargapdvhistorico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcargapdvhistorico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcargapdvhistorico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setid_carga(const Value: Boolean);   
begin                
  Fid_carga := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setid_rota(const Value: Boolean);   
begin                
  Fid_rota := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setcobranca(const Value: Boolean);   
begin                
  Fcobranca := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setpeso_bruto(const Value: Boolean);   
begin                
  Fpeso_bruto := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setpeso_liquido(const Value: Boolean);   
begin                
  Fpeso_liquido := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcargapdvhistorico.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
