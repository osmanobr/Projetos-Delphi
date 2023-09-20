unit Model.ERP.compra;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcompra = class(TModelBase)

private
    Fid : Integer;
    Fid_compra : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fdata_vencto : TDateTime;
    Ftaxa_juros : Double;
    Fvl_total : Double;
    Fvl_divida : Double;
    Fjuros_pago : Double;
    Fid_forma : Integer;
    Favista : WideString;
    Faprazo : WideString;
    Fchegou : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Settaxa_juros(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_divida(const Value: Double);
    procedure Setjuros_pago(const Value: Double);
    procedure Setid_forma(const Value: Integer);
    procedure Setavista(const Value: WideString);
    procedure Setaprazo(const Value: WideString);
    procedure Setchegou(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property taxa_juros     : Double read Ftaxa_juros write Settaxa_juros;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_divida     : Double read Fvl_divida write Setvl_divida;
    property juros_pago     : Double read Fjuros_pago write Setjuros_pago;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property avista     : WideString read Favista write Setavista;
    property aprazo     : WideString read Faprazo write Setaprazo;
    property chegou     : WideString read Fchegou write Setchegou;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcompra.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcompra) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcompra(Model).id;
Self.Fid_compra         := TModelERPcompra(Model).id_compra;
Self.Fid_empresa         := TModelERPcompra(Model).id_empresa;
Self.Fdata         := TModelERPcompra(Model).data;
Self.Fdocumento         := TModelERPcompra(Model).documento;
Self.Fparcela         := TModelERPcompra(Model).parcela;
Self.Fdata_vencto         := TModelERPcompra(Model).data_vencto;
Self.Ftaxa_juros         := TModelERPcompra(Model).taxa_juros;
Self.Fvl_total         := TModelERPcompra(Model).vl_total;
Self.Fvl_divida         := TModelERPcompra(Model).vl_divida;
Self.Fjuros_pago         := TModelERPcompra(Model).juros_pago;
Self.Fid_forma         := TModelERPcompra(Model).id_forma;
Self.Favista         := TModelERPcompra(Model).avista;
Self.Faprazo         := TModelERPcompra(Model).aprazo;
Self.Fchegou         := TModelERPcompra(Model).chegou;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcompra.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcompra.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcompra.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcompra.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPcompra.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcompra.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcompra.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcompra.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPcompra.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPcompra.Settaxa_juros(const Value: Boolean);   
begin                
  Ftaxa_juros := Value;   
end;                 

procedure TModelERPcompra.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPcompra.Setvl_divida(const Value: Boolean);   
begin                
  Fvl_divida := Value;   
end;                 

procedure TModelERPcompra.Setjuros_pago(const Value: Boolean);   
begin                
  Fjuros_pago := Value;   
end;                 

procedure TModelERPcompra.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcompra.Setavista(const Value: Boolean);   
begin                
  Favista := Value;   
end;                 

procedure TModelERPcompra.Setaprazo(const Value: Boolean);   
begin                
  Faprazo := Value;   
end;                 

procedure TModelERPcompra.Setchegou(const Value: Boolean);   
begin                
  Fchegou := Value;   
end;                 


end.
