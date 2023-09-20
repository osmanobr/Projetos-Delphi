unit Model.ERP.cheque_emitido;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPchequeemitido = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fid_caixa : Integer;
    Fid_conta : Integer;
    Fid_banco : Integer;
    Fid_fornecedor : Integer;
    Fdata_custodia : indefinido;
    Fvalor_bruto : Double;
    Fpercentual_juros : Double;
    Fvalor_juros : Double;
    Fvalor_liquido : Double;
    Festado : WideString;
    Fcredor : WideString;
    Fclick : Boolean;
    Fobs : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_conta(const Value: Integer);
    procedure Setid_banco(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setdata_custodia(const Value: indefinido);
    procedure Setvalor_bruto(const Value: Double);
    procedure Setpercentual_juros(const Value: Double);
    procedure Setvalor_juros(const Value: Double);
    procedure Setvalor_liquido(const Value: Double);
    procedure Setestado(const Value: WideString);
    procedure Setcredor(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setobs(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_conta     : Integer read Fid_conta write Setid_conta;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property data_custodia     : indefinido read Fdata_custodia write Setdata_custodia;
    property valor_bruto     : Double read Fvalor_bruto write Setvalor_bruto;
    property percentual_juros     : Double read Fpercentual_juros write Setpercentual_juros;
    property valor_juros     : Double read Fvalor_juros write Setvalor_juros;
    property valor_liquido     : Double read Fvalor_liquido write Setvalor_liquido;
    property estado     : WideString read Festado write Setestado;
    property credor     : WideString read Fcredor write Setcredor;
    property click     : Boolean read Fclick write Setclick;
    property obs     : WideString read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPchequeemitido.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPchequeemitido) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPchequeemitido(Model).id;
Self.Fid_empresa         := TModelERPchequeemitido(Model).id_empresa;
Self.Fid_usuario         := TModelERPchequeemitido(Model).id_usuario;
Self.Fid_caixa         := TModelERPchequeemitido(Model).id_caixa;
Self.Fid_conta         := TModelERPchequeemitido(Model).id_conta;
Self.Fid_banco         := TModelERPchequeemitido(Model).id_banco;
Self.Fid_fornecedor         := TModelERPchequeemitido(Model).id_fornecedor;
Self.Fdata_custodia         := TModelERPchequeemitido(Model).data_custodia;
Self.Fvalor_bruto         := TModelERPchequeemitido(Model).valor_bruto;
Self.Fpercentual_juros         := TModelERPchequeemitido(Model).percentual_juros;
Self.Fvalor_juros         := TModelERPchequeemitido(Model).valor_juros;
Self.Fvalor_liquido         := TModelERPchequeemitido(Model).valor_liquido;
Self.Festado         := TModelERPchequeemitido(Model).estado;
Self.Fcredor         := TModelERPchequeemitido(Model).credor;
Self.Fclick         := TModelERPchequeemitido(Model).click;
Self.Fobs         := TModelERPchequeemitido(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPchequeemitido.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPchequeemitido.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPchequeemitido.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPchequeemitido.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPchequeemitido.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPchequeemitido.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPchequeemitido.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPchequeemitido.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPchequeemitido.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPchequeemitido.Setdata_custodia(const Value: Boolean);   
begin                
  Fdata_custodia := Value;   
end;                 

procedure TModelERPchequeemitido.Setvalor_bruto(const Value: Boolean);   
begin                
  Fvalor_bruto := Value;   
end;                 

procedure TModelERPchequeemitido.Setpercentual_juros(const Value: Boolean);   
begin                
  Fpercentual_juros := Value;   
end;                 

procedure TModelERPchequeemitido.Setvalor_juros(const Value: Boolean);   
begin                
  Fvalor_juros := Value;   
end;                 

procedure TModelERPchequeemitido.Setvalor_liquido(const Value: Boolean);   
begin                
  Fvalor_liquido := Value;   
end;                 

procedure TModelERPchequeemitido.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPchequeemitido.Setcredor(const Value: Boolean);   
begin                
  Fcredor := Value;   
end;                 

procedure TModelERPchequeemitido.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPchequeemitido.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
