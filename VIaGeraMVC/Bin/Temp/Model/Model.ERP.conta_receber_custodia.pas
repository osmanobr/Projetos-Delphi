unit Model.ERP.conta_receber;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceber = class(TModelBase)

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
 function TModelERPcontareceber.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceber) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceber(Model).id;
Self.Fid_empresa         := TModelERPcontareceber(Model).id_empresa;
Self.Fid_usuario         := TModelERPcontareceber(Model).id_usuario;
Self.Fid_caixa         := TModelERPcontareceber(Model).id_caixa;
Self.Fid_conta         := TModelERPcontareceber(Model).id_conta;
Self.Fid_banco         := TModelERPcontareceber(Model).id_banco;
Self.Fid_fornecedor         := TModelERPcontareceber(Model).id_fornecedor;
Self.Fdata_custodia         := TModelERPcontareceber(Model).data_custodia;
Self.Fvalor_bruto         := TModelERPcontareceber(Model).valor_bruto;
Self.Fpercentual_juros         := TModelERPcontareceber(Model).percentual_juros;
Self.Fvalor_juros         := TModelERPcontareceber(Model).valor_juros;
Self.Fvalor_liquido         := TModelERPcontareceber(Model).valor_liquido;
Self.Festado         := TModelERPcontareceber(Model).estado;
Self.Fcredor         := TModelERPcontareceber(Model).credor;
Self.Fclick         := TModelERPcontareceber(Model).click;
Self.Fobs         := TModelERPcontareceber(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceber.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceber.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceber.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceber.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontareceber.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcontareceber.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcontareceber.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPcontareceber.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPcontareceber.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPcontareceber.Setdata_custodia(const Value: Boolean);   
begin                
  Fdata_custodia := Value;   
end;                 

procedure TModelERPcontareceber.Setvalor_bruto(const Value: Boolean);   
begin                
  Fvalor_bruto := Value;   
end;                 

procedure TModelERPcontareceber.Setpercentual_juros(const Value: Boolean);   
begin                
  Fpercentual_juros := Value;   
end;                 

procedure TModelERPcontareceber.Setvalor_juros(const Value: Boolean);   
begin                
  Fvalor_juros := Value;   
end;                 

procedure TModelERPcontareceber.Setvalor_liquido(const Value: Boolean);   
begin                
  Fvalor_liquido := Value;   
end;                 

procedure TModelERPcontareceber.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPcontareceber.Setcredor(const Value: Boolean);   
begin                
  Fcredor := Value;   
end;                 

procedure TModelERPcontareceber.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcontareceber.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
