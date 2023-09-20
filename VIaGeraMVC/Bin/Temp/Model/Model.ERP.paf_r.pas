unit Model.ERP.paf_r;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpafr = class(TModelBase)

private
    Fid : Integer;
    Fid_r01 : Integer;
    Fid_r04 : Integer;
    Fid_r06 : Integer;
    Ffabricacao_ecf : indefinido;
    Fmf_adicional : indefinido;
    Fmodelo_ecf : indefinido;
    Fnumero_usuario_ecf : indefinido;
    Fcoo : indefinido;
    Fccf : indefinido;
    Fgnf : indefinido;
    Fmeio_pagamento : indefinido;
    Fvalor_pagamento : Double;
    Findicador_estorno : indefinido;
    Fvalor_estorno : Double;
    Ffiscal_nao_fiscal : Integer;
    Findicador_cancelamento_cupom : indefinido;
    Fdata : indefinido;
    Fcode : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_r01(const Value: Integer);
    procedure Setid_r04(const Value: Integer);
    procedure Setid_r06(const Value: Integer);
    procedure Setfabricacao_ecf(const Value: indefinido);
    procedure Setmf_adicional(const Value: indefinido);
    procedure Setmodelo_ecf(const Value: indefinido);
    procedure Setnumero_usuario_ecf(const Value: indefinido);
    procedure Setcoo(const Value: indefinido);
    procedure Setccf(const Value: indefinido);
    procedure Setgnf(const Value: indefinido);
    procedure Setmeio_pagamento(const Value: indefinido);
    procedure Setvalor_pagamento(const Value: Double);
    procedure Setindicador_estorno(const Value: indefinido);
    procedure Setvalor_estorno(const Value: Double);
    procedure Setfiscal_nao_fiscal(const Value: Integer);
    procedure Setindicador_cancelamento_cupom(const Value: indefinido);
    procedure Setdata(const Value: indefinido);
    procedure Setcode(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_r01     : Integer read Fid_r01 write Setid_r01;
    property id_r04     : Integer read Fid_r04 write Setid_r04;
    property id_r06     : Integer read Fid_r06 write Setid_r06;
    property fabricacao_ecf     : indefinido read Ffabricacao_ecf write Setfabricacao_ecf;
    property mf_adicional     : indefinido read Fmf_adicional write Setmf_adicional;
    property modelo_ecf     : indefinido read Fmodelo_ecf write Setmodelo_ecf;
    property numero_usuario_ecf     : indefinido read Fnumero_usuario_ecf write Setnumero_usuario_ecf;
    property coo     : indefinido read Fcoo write Setcoo;
    property ccf     : indefinido read Fccf write Setccf;
    property gnf     : indefinido read Fgnf write Setgnf;
    property meio_pagamento     : indefinido read Fmeio_pagamento write Setmeio_pagamento;
    property valor_pagamento     : Double read Fvalor_pagamento write Setvalor_pagamento;
    property indicador_estorno     : indefinido read Findicador_estorno write Setindicador_estorno;
    property valor_estorno     : Double read Fvalor_estorno write Setvalor_estorno;
    property fiscal_nao_fiscal     : Integer read Ffiscal_nao_fiscal write Setfiscal_nao_fiscal;
    property indicador_cancelamento_cupom     : indefinido read Findicador_cancelamento_cupom write Setindicador_cancelamento_cupom;
    property data     : indefinido read Fdata write Setdata;
    property code     : indefinido read Fcode write Setcode;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpafr.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpafr) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpafr(Model).id;
Self.Fid_r01         := TModelERPpafr(Model).id_r01;
Self.Fid_r04         := TModelERPpafr(Model).id_r04;
Self.Fid_r06         := TModelERPpafr(Model).id_r06;
Self.Ffabricacao_ecf         := TModelERPpafr(Model).fabricacao_ecf;
Self.Fmf_adicional         := TModelERPpafr(Model).mf_adicional;
Self.Fmodelo_ecf         := TModelERPpafr(Model).modelo_ecf;
Self.Fnumero_usuario_ecf         := TModelERPpafr(Model).numero_usuario_ecf;
Self.Fcoo         := TModelERPpafr(Model).coo;
Self.Fccf         := TModelERPpafr(Model).ccf;
Self.Fgnf         := TModelERPpafr(Model).gnf;
Self.Fmeio_pagamento         := TModelERPpafr(Model).meio_pagamento;
Self.Fvalor_pagamento         := TModelERPpafr(Model).valor_pagamento;
Self.Findicador_estorno         := TModelERPpafr(Model).indicador_estorno;
Self.Fvalor_estorno         := TModelERPpafr(Model).valor_estorno;
Self.Ffiscal_nao_fiscal         := TModelERPpafr(Model).fiscal_nao_fiscal;
Self.Findicador_cancelamento_cupom         := TModelERPpafr(Model).indicador_cancelamento_cupom;
Self.Fdata         := TModelERPpafr(Model).data;
Self.Fcode         := TModelERPpafr(Model).code;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpafr.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpafr.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpafr.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpafr.Setid_r01(const Value: Boolean);   
begin                
  Fid_r01 := Value;   
end;                 

procedure TModelERPpafr.Setid_r04(const Value: Boolean);   
begin                
  Fid_r04 := Value;   
end;                 

procedure TModelERPpafr.Setid_r06(const Value: Boolean);   
begin                
  Fid_r06 := Value;   
end;                 

procedure TModelERPpafr.Setfabricacao_ecf(const Value: Boolean);   
begin                
  Ffabricacao_ecf := Value;   
end;                 

procedure TModelERPpafr.Setmf_adicional(const Value: Boolean);   
begin                
  Fmf_adicional := Value;   
end;                 

procedure TModelERPpafr.Setmodelo_ecf(const Value: Boolean);   
begin                
  Fmodelo_ecf := Value;   
end;                 

procedure TModelERPpafr.Setnumero_usuario_ecf(const Value: Boolean);   
begin                
  Fnumero_usuario_ecf := Value;   
end;                 

procedure TModelERPpafr.Setcoo(const Value: Boolean);   
begin                
  Fcoo := Value;   
end;                 

procedure TModelERPpafr.Setccf(const Value: Boolean);   
begin                
  Fccf := Value;   
end;                 

procedure TModelERPpafr.Setgnf(const Value: Boolean);   
begin                
  Fgnf := Value;   
end;                 

procedure TModelERPpafr.Setmeio_pagamento(const Value: Boolean);   
begin                
  Fmeio_pagamento := Value;   
end;                 

procedure TModelERPpafr.Setvalor_pagamento(const Value: Boolean);   
begin                
  Fvalor_pagamento := Value;   
end;                 

procedure TModelERPpafr.Setindicador_estorno(const Value: Boolean);   
begin                
  Findicador_estorno := Value;   
end;                 

procedure TModelERPpafr.Setvalor_estorno(const Value: Boolean);   
begin                
  Fvalor_estorno := Value;   
end;                 

procedure TModelERPpafr.Setfiscal_nao_fiscal(const Value: Boolean);   
begin                
  Ffiscal_nao_fiscal := Value;   
end;                 

procedure TModelERPpafr.Setindicador_cancelamento_cupom(const Value: Boolean);   
begin                
  Findicador_cancelamento_cupom := Value;   
end;                 

procedure TModelERPpafr.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpafr.Setcode(const Value: Boolean);   
begin                
  Fcode := Value;   
end;                 


end.
