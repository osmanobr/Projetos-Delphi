unit Model.ERP.comissao_os_indicador;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaoosindicador = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fvl_unitario : Double;
    Fvl_tabela : Double;
    Fquantidade : Double;
    Fdesconto_produto : Double;
    Ftotal_produto : Double;
    Fvl_comissao : Double;
    Fcancelada : WideString;
    Favistaaprazo : WideString;
    Foperacao : WideString;
    Fcomissao : WideString;
    Fpago : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setdocumento(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_tabela(const Value: Double);
    procedure Setquantidade(const Value: Double);
    procedure Setdesconto_produto(const Value: Double);
    procedure Settotal_produto(const Value: Double);
    procedure Setvl_comissao(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Setavistaaprazo(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setcomissao(const Value: WideString);
    procedure Setpago(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_os     : Integer read Fid_os write Setid_os;
    property documento     : WideString read Fdocumento write Setdocumento;
    property data     : TDateTime read Fdata write Setdata;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_tabela     : Double read Fvl_tabela write Setvl_tabela;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property desconto_produto     : Double read Fdesconto_produto write Setdesconto_produto;
    property total_produto     : Double read Ftotal_produto write Settotal_produto;
    property vl_comissao     : Double read Fvl_comissao write Setvl_comissao;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property avistaaprazo     : WideString read Favistaaprazo write Setavistaaprazo;
    property operacao     : WideString read Foperacao write Setoperacao;
    property comissao     : WideString read Fcomissao write Setcomissao;
    property pago     : WideString read Fpago write Setpago;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaoosindicador.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaoosindicador) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaoosindicador(Model).id;
Self.Fid_empresa         := TModelERPcomissaoosindicador(Model).id_empresa;
Self.Fid_os         := TModelERPcomissaoosindicador(Model).id_os;
Self.Fdocumento         := TModelERPcomissaoosindicador(Model).documento;
Self.Fdata         := TModelERPcomissaoosindicador(Model).data;
Self.Fid_vendedor         := TModelERPcomissaoosindicador(Model).id_vendedor;
Self.Fid_cliente         := TModelERPcomissaoosindicador(Model).id_cliente;
Self.Fid_forma         := TModelERPcomissaoosindicador(Model).id_forma;
Self.Fid_caixa         := TModelERPcomissaoosindicador(Model).id_caixa;
Self.Fid_produto         := TModelERPcomissaoosindicador(Model).id_produto;
Self.Fnome_produto         := TModelERPcomissaoosindicador(Model).nome_produto;
Self.Fvl_unitario         := TModelERPcomissaoosindicador(Model).vl_unitario;
Self.Fvl_tabela         := TModelERPcomissaoosindicador(Model).vl_tabela;
Self.Fquantidade         := TModelERPcomissaoosindicador(Model).quantidade;
Self.Fdesconto_produto         := TModelERPcomissaoosindicador(Model).desconto_produto;
Self.Ftotal_produto         := TModelERPcomissaoosindicador(Model).total_produto;
Self.Fvl_comissao         := TModelERPcomissaoosindicador(Model).vl_comissao;
Self.Fcancelada         := TModelERPcomissaoosindicador(Model).cancelada;
Self.Favistaaprazo         := TModelERPcomissaoosindicador(Model).avistaaprazo;
Self.Foperacao         := TModelERPcomissaoosindicador(Model).operacao;
Self.Fcomissao         := TModelERPcomissaoosindicador(Model).comissao;
Self.Fpago         := TModelERPcomissaoosindicador(Model).pago;
Self.Fclick         := TModelERPcomissaoosindicador(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaoosindicador.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaoosindicador.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaoosindicador.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setvl_tabela(const Value: Boolean);   
begin                
  Fvl_tabela := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setdesconto_produto(const Value: Boolean);   
begin                
  Fdesconto_produto := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Settotal_produto(const Value: Boolean);   
begin                
  Ftotal_produto := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setvl_comissao(const Value: Boolean);   
begin                
  Fvl_comissao := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setavistaaprazo(const Value: Boolean);   
begin                
  Favistaaprazo := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPcomissaoosindicador.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
