unit Model.ERP.comissao_os_produto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaoosproduto = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_servico : Integer;
    Fnome_servico : WideString;
    Fvl_unitario : Double;
    Fquantidade : Double;
    Fdesconto_servico : Double;
    Ftotal_servico : Double;
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
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_servico(const Value: Integer);
    procedure Setnome_servico(const Value: WideString);
    procedure Setvl_unitario(const Value: Double);
    procedure Setquantidade(const Value: Double);
    procedure Setdesconto_servico(const Value: Double);
    procedure Settotal_servico(const Value: Double);
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
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_servico     : Integer read Fid_servico write Setid_servico;
    property nome_servico     : WideString read Fnome_servico write Setnome_servico;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property desconto_servico     : Double read Fdesconto_servico write Setdesconto_servico;
    property total_servico     : Double read Ftotal_servico write Settotal_servico;
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
 function TModelERPcomissaoosproduto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaoosproduto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaoosproduto(Model).id;
Self.Fid_empresa         := TModelERPcomissaoosproduto(Model).id_empresa;
Self.Fid_os         := TModelERPcomissaoosproduto(Model).id_os;
Self.Fdocumento         := TModelERPcomissaoosproduto(Model).documento;
Self.Fdata         := TModelERPcomissaoosproduto(Model).data;
Self.Fid_vendedor         := TModelERPcomissaoosproduto(Model).id_vendedor;
Self.Fid_funcionario         := TModelERPcomissaoosproduto(Model).id_funcionario;
Self.Fid_cliente         := TModelERPcomissaoosproduto(Model).id_cliente;
Self.Fid_forma         := TModelERPcomissaoosproduto(Model).id_forma;
Self.Fid_caixa         := TModelERPcomissaoosproduto(Model).id_caixa;
Self.Fid_servico         := TModelERPcomissaoosproduto(Model).id_servico;
Self.Fnome_servico         := TModelERPcomissaoosproduto(Model).nome_servico;
Self.Fvl_unitario         := TModelERPcomissaoosproduto(Model).vl_unitario;
Self.Fquantidade         := TModelERPcomissaoosproduto(Model).quantidade;
Self.Fdesconto_servico         := TModelERPcomissaoosproduto(Model).desconto_servico;
Self.Ftotal_servico         := TModelERPcomissaoosproduto(Model).total_servico;
Self.Fvl_comissao         := TModelERPcomissaoosproduto(Model).vl_comissao;
Self.Fcancelada         := TModelERPcomissaoosproduto(Model).cancelada;
Self.Favistaaprazo         := TModelERPcomissaoosproduto(Model).avistaaprazo;
Self.Foperacao         := TModelERPcomissaoosproduto(Model).operacao;
Self.Fcomissao         := TModelERPcomissaoosproduto(Model).comissao;
Self.Fpago         := TModelERPcomissaoosproduto(Model).pago;
Self.Fclick         := TModelERPcomissaoosproduto(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaoosproduto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaoosproduto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaoosproduto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setid_servico(const Value: Boolean);   
begin                
  Fid_servico := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setnome_servico(const Value: Boolean);   
begin                
  Fnome_servico := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setdesconto_servico(const Value: Boolean);   
begin                
  Fdesconto_servico := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Settotal_servico(const Value: Boolean);   
begin                
  Ftotal_servico := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setvl_comissao(const Value: Boolean);   
begin                
  Fvl_comissao := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setavistaaprazo(const Value: Boolean);   
begin                
  Favistaaprazo := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPcomissaoosproduto.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
