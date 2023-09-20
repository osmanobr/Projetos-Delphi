unit Model.ERP.os_classificacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPosclassificacao = class(TModelBase)

private
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fdata_vencto : TDateTime;
    Ftaxa_juros : Double;
    Fvl_total : Double;
    Fvl_divida : Double;
    Fjuros_pago : Double;
    Fid_forma : Integer;
    Favista : indefinido;
    Faprazo : indefinido;
    Fobs : indefinido;
    Fnomeforma : indefinido;
    Fidforma : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setdocumento(const Value: indefinido);
    procedure Setparcela(const Value: indefinido);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Settaxa_juros(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_divida(const Value: Double);
    procedure Setjuros_pago(const Value: Double);
    procedure Setid_forma(const Value: Integer);
    procedure Setavista(const Value: indefinido);
    procedure Setaprazo(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setnomeforma(const Value: indefinido);
    procedure Setidforma(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property documento     : indefinido read Fdocumento write Setdocumento;
    property parcela     : indefinido read Fparcela write Setparcela;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property taxa_juros     : Double read Ftaxa_juros write Settaxa_juros;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_divida     : Double read Fvl_divida write Setvl_divida;
    property juros_pago     : Double read Fjuros_pago write Setjuros_pago;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property avista     : indefinido read Favista write Setavista;
    property aprazo     : indefinido read Faprazo write Setaprazo;
    property obs     : indefinido read Fobs write Setobs;
    property nomeforma     : indefinido read Fnomeforma write Setnomeforma;
    property idforma     : Integer read Fidforma write Setidforma;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPosclassificacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPosclassificacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPosclassificacao(Model).id;
Self.Fid_os         := TModelERPosclassificacao(Model).id_os;
Self.Fid_empresa         := TModelERPosclassificacao(Model).id_empresa;
Self.Fdata         := TModelERPosclassificacao(Model).data;
Self.Fdocumento         := TModelERPosclassificacao(Model).documento;
Self.Fparcela         := TModelERPosclassificacao(Model).parcela;
Self.Fdata_vencto         := TModelERPosclassificacao(Model).data_vencto;
Self.Ftaxa_juros         := TModelERPosclassificacao(Model).taxa_juros;
Self.Fvl_total         := TModelERPosclassificacao(Model).vl_total;
Self.Fvl_divida         := TModelERPosclassificacao(Model).vl_divida;
Self.Fjuros_pago         := TModelERPosclassificacao(Model).juros_pago;
Self.Fid_forma         := TModelERPosclassificacao(Model).id_forma;
Self.Favista         := TModelERPosclassificacao(Model).avista;
Self.Faprazo         := TModelERPosclassificacao(Model).aprazo;
Self.Fobs         := TModelERPosclassificacao(Model).obs;
Self.Fnomeforma         := TModelERPosclassificacao(Model).nomeforma;
Self.Fidforma         := TModelERPosclassificacao(Model).idforma;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPosclassificacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPosclassificacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPosclassificacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPosclassificacao.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPosclassificacao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPosclassificacao.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPosclassificacao.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPosclassificacao.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPosclassificacao.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPosclassificacao.Settaxa_juros(const Value: Boolean);   
begin                
  Ftaxa_juros := Value;   
end;                 

procedure TModelERPosclassificacao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPosclassificacao.Setvl_divida(const Value: Boolean);   
begin                
  Fvl_divida := Value;   
end;                 

procedure TModelERPosclassificacao.Setjuros_pago(const Value: Boolean);   
begin                
  Fjuros_pago := Value;   
end;                 

procedure TModelERPosclassificacao.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPosclassificacao.Setavista(const Value: Boolean);   
begin                
  Favista := Value;   
end;                 

procedure TModelERPosclassificacao.Setaprazo(const Value: Boolean);   
begin                
  Faprazo := Value;   
end;                 

procedure TModelERPosclassificacao.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPosclassificacao.Setnomeforma(const Value: Boolean);   
begin                
  Fnomeforma := Value;   
end;                 

procedure TModelERPosclassificacao.Setidforma(const Value: Boolean);   
begin                
  Fidforma := Value;   
end;                 


end.
