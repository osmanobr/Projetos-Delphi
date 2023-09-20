unit Model.ERP.locacao_aditivo_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacaoaditivoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_locacao : Integer;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fdata_vencto : TDateTime;
    Fdata : TDateTime;
    Ftaxa_juros : Double;
    Ftotal : Double;
    Fdivida : Double;
    Fjuros_pago : Double;
    Fid_forma : Integer;
    Faprazo : WideString;
    Favista : WideString;
    Fobs : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_locacao(const Value: Integer);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdata(const Value: TDateTime);
    procedure Settaxa_juros(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setdivida(const Value: Double);
    procedure Setjuros_pago(const Value: Double);
    procedure Setid_forma(const Value: Integer);
    procedure Setaprazo(const Value: WideString);
    procedure Setavista(const Value: WideString);
    procedure Setobs(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_locacao     : Integer read Fid_locacao write Setid_locacao;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property data     : TDateTime read Fdata write Setdata;
    property taxa_juros     : Double read Ftaxa_juros write Settaxa_juros;
    property total     : Double read Ftotal write Settotal;
    property divida     : Double read Fdivida write Setdivida;
    property juros_pago     : Double read Fjuros_pago write Setjuros_pago;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property aprazo     : WideString read Faprazo write Setaprazo;
    property avista     : WideString read Favista write Setavista;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacaoaditivoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacaoaditivoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacaoaditivoitem(Model).id;
Self.Fid_empresa         := TModelERPlocacaoaditivoitem(Model).id_empresa;
Self.Fid_locacao         := TModelERPlocacaoaditivoitem(Model).id_locacao;
Self.Fdocumento         := TModelERPlocacaoaditivoitem(Model).documento;
Self.Fparcela         := TModelERPlocacaoaditivoitem(Model).parcela;
Self.Fdata_vencto         := TModelERPlocacaoaditivoitem(Model).data_vencto;
Self.Fdata         := TModelERPlocacaoaditivoitem(Model).data;
Self.Ftaxa_juros         := TModelERPlocacaoaditivoitem(Model).taxa_juros;
Self.Ftotal         := TModelERPlocacaoaditivoitem(Model).total;
Self.Fdivida         := TModelERPlocacaoaditivoitem(Model).divida;
Self.Fjuros_pago         := TModelERPlocacaoaditivoitem(Model).juros_pago;
Self.Fid_forma         := TModelERPlocacaoaditivoitem(Model).id_forma;
Self.Faprazo         := TModelERPlocacaoaditivoitem(Model).aprazo;
Self.Favista         := TModelERPlocacaoaditivoitem(Model).avista;
Self.Fobs         := TModelERPlocacaoaditivoitem(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacaoaditivoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacaoaditivoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacaoaditivoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setid_locacao(const Value: Boolean);   
begin                
  Fid_locacao := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Settaxa_juros(const Value: Boolean);   
begin                
  Ftaxa_juros := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setdivida(const Value: Boolean);   
begin                
  Fdivida := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setjuros_pago(const Value: Boolean);   
begin                
  Fjuros_pago := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setaprazo(const Value: Boolean);   
begin                
  Faprazo := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setavista(const Value: Boolean);   
begin                
  Favista := Value;   
end;                 

procedure TModelERPlocacaoaditivoitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
