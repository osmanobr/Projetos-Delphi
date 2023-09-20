unit Model.ERP.venda;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvenda = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
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
    Fobs : indefinido;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fvl_financeiro : Double;
    Facredito : Boolean;
    Funiao : Boolean;
    Fid_venda_uniao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
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
    procedure Setobs(const Value: indefinido);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setid_pagamentos(const Value: Integer);
    procedure Setvl_financeiro(const Value: Double);
    procedure Setacredito(const Value: Boolean);
    procedure Setuniao(const Value: Boolean);
    procedure Setid_venda_uniao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
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
    property obs     : indefinido read Fobs write Setobs;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property id_pagamentos     : Integer read Fid_pagamentos write Setid_pagamentos;
    property vl_financeiro     : Double read Fvl_financeiro write Setvl_financeiro;
    property acredito     : Boolean read Facredito write Setacredito;
    property uniao     : Boolean read Funiao write Setuniao;
    property id_venda_uniao     : Integer read Fid_venda_uniao write Setid_venda_uniao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvenda.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvenda) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvenda(Model).id;
Self.Fid_venda         := TModelERPvenda(Model).id_venda;
Self.Fid_empresa         := TModelERPvenda(Model).id_empresa;
Self.Fdata         := TModelERPvenda(Model).data;
Self.Fdocumento         := TModelERPvenda(Model).documento;
Self.Fparcela         := TModelERPvenda(Model).parcela;
Self.Fdata_vencto         := TModelERPvenda(Model).data_vencto;
Self.Ftaxa_juros         := TModelERPvenda(Model).taxa_juros;
Self.Fvl_total         := TModelERPvenda(Model).vl_total;
Self.Fvl_divida         := TModelERPvenda(Model).vl_divida;
Self.Fjuros_pago         := TModelERPvenda(Model).juros_pago;
Self.Fid_forma         := TModelERPvenda(Model).id_forma;
Self.Favista         := TModelERPvenda(Model).avista;
Self.Faprazo         := TModelERPvenda(Model).aprazo;
Self.Fobs         := TModelERPvenda(Model).obs;
Self.Fid_movimento         := TModelERPvenda(Model).id_movimento;
Self.Fid_cupons         := TModelERPvenda(Model).id_cupons;
Self.Fid_pagamentos         := TModelERPvenda(Model).id_pagamentos;
Self.Fvl_financeiro         := TModelERPvenda(Model).vl_financeiro;
Self.Facredito         := TModelERPvenda(Model).acredito;
Self.Funiao         := TModelERPvenda(Model).uniao;
Self.Fid_venda_uniao         := TModelERPvenda(Model).id_venda_uniao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvenda.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvenda.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvenda.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvenda.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvenda.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvenda.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPvenda.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPvenda.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPvenda.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPvenda.Settaxa_juros(const Value: Boolean);   
begin                
  Ftaxa_juros := Value;   
end;                 

procedure TModelERPvenda.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvenda.Setvl_divida(const Value: Boolean);   
begin                
  Fvl_divida := Value;   
end;                 

procedure TModelERPvenda.Setjuros_pago(const Value: Boolean);   
begin                
  Fjuros_pago := Value;   
end;                 

procedure TModelERPvenda.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPvenda.Setavista(const Value: Boolean);   
begin                
  Favista := Value;   
end;                 

procedure TModelERPvenda.Setaprazo(const Value: Boolean);   
begin                
  Faprazo := Value;   
end;                 

procedure TModelERPvenda.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPvenda.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPvenda.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPvenda.Setid_pagamentos(const Value: Boolean);   
begin                
  Fid_pagamentos := Value;   
end;                 

procedure TModelERPvenda.Setvl_financeiro(const Value: Boolean);   
begin                
  Fvl_financeiro := Value;   
end;                 

procedure TModelERPvenda.Setacredito(const Value: Boolean);   
begin                
  Facredito := Value;   
end;                 

procedure TModelERPvenda.Setuniao(const Value: Boolean);   
begin                
  Funiao := Value;   
end;                 

procedure TModelERPvenda.Setid_venda_uniao(const Value: Boolean);   
begin                
  Fid_venda_uniao := Value;   
end;                 


end.
