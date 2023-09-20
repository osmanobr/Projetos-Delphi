unit Model.ERP.parcela_chequerecebido;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPparcelachequerecebido = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_pagar : Integer;
    Fid_caixa : Integer;
    Fid_contacorrente : indefinido;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fdata_pgto : TDateTime;
    Fid_fornecedor : Integer;
    Fvl_total : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_juros : Double;
    Fvl_jurospago : Double;
    Fdebcre : indefinido;
    Fclick : Boolean;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fid_usuario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_conta_pagar(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_contacorrente(const Value: indefinido);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setdata_pgto(const Value: TDateTime);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_juros(const Value: Double);
    procedure Setvl_jurospago(const Value: Double);
    procedure Setdebcre(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setdocumento(const Value: indefinido);
    procedure Setparcela(const Value: indefinido);
    procedure Setid_usuario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_conta_pagar     : Integer read Fid_conta_pagar write Setid_conta_pagar;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_contacorrente     : indefinido read Fid_contacorrente write Setid_contacorrente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property data_pgto     : TDateTime read Fdata_pgto write Setdata_pgto;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property vl_jurospago     : Double read Fvl_jurospago write Setvl_jurospago;
    property debcre     : indefinido read Fdebcre write Setdebcre;
    property click     : Boolean read Fclick write Setclick;
    property documento     : indefinido read Fdocumento write Setdocumento;
    property parcela     : indefinido read Fparcela write Setparcela;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPparcelachequerecebido.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPparcelachequerecebido) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPparcelachequerecebido(Model).id;
Self.Fid_empresa         := TModelERPparcelachequerecebido(Model).id_empresa;
Self.Fid_conta_pagar         := TModelERPparcelachequerecebido(Model).id_conta_pagar;
Self.Fid_caixa         := TModelERPparcelachequerecebido(Model).id_caixa;
Self.Fid_contacorrente         := TModelERPparcelachequerecebido(Model).id_contacorrente;
Self.Fid_forma         := TModelERPparcelachequerecebido(Model).id_forma;
Self.Fid_conta         := TModelERPparcelachequerecebido(Model).id_conta;
Self.Fdata_pgto         := TModelERPparcelachequerecebido(Model).data_pgto;
Self.Fid_fornecedor         := TModelERPparcelachequerecebido(Model).id_fornecedor;
Self.Fvl_total         := TModelERPparcelachequerecebido(Model).vl_total;
Self.Fvl_desconto         := TModelERPparcelachequerecebido(Model).vl_desconto;
Self.Fvl_pago         := TModelERPparcelachequerecebido(Model).vl_pago;
Self.Fvl_juros         := TModelERPparcelachequerecebido(Model).vl_juros;
Self.Fvl_jurospago         := TModelERPparcelachequerecebido(Model).vl_jurospago;
Self.Fdebcre         := TModelERPparcelachequerecebido(Model).debcre;
Self.Fclick         := TModelERPparcelachequerecebido(Model).click;
Self.Fdocumento         := TModelERPparcelachequerecebido(Model).documento;
Self.Fparcela         := TModelERPparcelachequerecebido(Model).parcela;
Self.Fid_usuario         := TModelERPparcelachequerecebido(Model).id_usuario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPparcelachequerecebido.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPparcelachequerecebido.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPparcelachequerecebido.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_conta_pagar(const Value: Boolean);   
begin                
  Fid_conta_pagar := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setvl_jurospago(const Value: Boolean);   
begin                
  Fvl_jurospago := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPparcelachequerecebido.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 


end.
