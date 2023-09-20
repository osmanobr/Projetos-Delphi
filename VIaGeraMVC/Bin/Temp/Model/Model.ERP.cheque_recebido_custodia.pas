unit Model.ERP.cheque_recebido;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPchequerecebido = class(TModelBase)

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
    Ftitulos : Double;
    Fcheques : Double;
    Fdinheiro : Double;
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
    procedure Settitulos(const Value: Double);
    procedure Setcheques(const Value: Double);
    procedure Setdinheiro(const Value: Double);
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
    property titulos     : Double read Ftitulos write Settitulos;
    property cheques     : Double read Fcheques write Setcheques;
    property dinheiro     : Double read Fdinheiro write Setdinheiro;
    property obs     : WideString read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPchequerecebido.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPchequerecebido) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPchequerecebido(Model).id;
Self.Fid_empresa         := TModelERPchequerecebido(Model).id_empresa;
Self.Fid_usuario         := TModelERPchequerecebido(Model).id_usuario;
Self.Fid_caixa         := TModelERPchequerecebido(Model).id_caixa;
Self.Fid_conta         := TModelERPchequerecebido(Model).id_conta;
Self.Fid_banco         := TModelERPchequerecebido(Model).id_banco;
Self.Fid_fornecedor         := TModelERPchequerecebido(Model).id_fornecedor;
Self.Fdata_custodia         := TModelERPchequerecebido(Model).data_custodia;
Self.Fvalor_bruto         := TModelERPchequerecebido(Model).valor_bruto;
Self.Fpercentual_juros         := TModelERPchequerecebido(Model).percentual_juros;
Self.Fvalor_juros         := TModelERPchequerecebido(Model).valor_juros;
Self.Fvalor_liquido         := TModelERPchequerecebido(Model).valor_liquido;
Self.Festado         := TModelERPchequerecebido(Model).estado;
Self.Fcredor         := TModelERPchequerecebido(Model).credor;
Self.Fclick         := TModelERPchequerecebido(Model).click;
Self.Ftitulos         := TModelERPchequerecebido(Model).titulos;
Self.Fcheques         := TModelERPchequerecebido(Model).cheques;
Self.Fdinheiro         := TModelERPchequerecebido(Model).dinheiro;
Self.Fobs         := TModelERPchequerecebido(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPchequerecebido.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPchequerecebido.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPchequerecebido.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPchequerecebido.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPchequerecebido.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPchequerecebido.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPchequerecebido.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPchequerecebido.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPchequerecebido.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPchequerecebido.Setdata_custodia(const Value: Boolean);   
begin                
  Fdata_custodia := Value;   
end;                 

procedure TModelERPchequerecebido.Setvalor_bruto(const Value: Boolean);   
begin                
  Fvalor_bruto := Value;   
end;                 

procedure TModelERPchequerecebido.Setpercentual_juros(const Value: Boolean);   
begin                
  Fpercentual_juros := Value;   
end;                 

procedure TModelERPchequerecebido.Setvalor_juros(const Value: Boolean);   
begin                
  Fvalor_juros := Value;   
end;                 

procedure TModelERPchequerecebido.Setvalor_liquido(const Value: Boolean);   
begin                
  Fvalor_liquido := Value;   
end;                 

procedure TModelERPchequerecebido.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPchequerecebido.Setcredor(const Value: Boolean);   
begin                
  Fcredor := Value;   
end;                 

procedure TModelERPchequerecebido.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPchequerecebido.Settitulos(const Value: Boolean);   
begin                
  Ftitulos := Value;   
end;                 

procedure TModelERPchequerecebido.Setcheques(const Value: Boolean);   
begin                
  Fcheques := Value;   
end;                 

procedure TModelERPchequerecebido.Setdinheiro(const Value: Boolean);   
begin                
  Fdinheiro := Value;   
end;                 

procedure TModelERPchequerecebido.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
