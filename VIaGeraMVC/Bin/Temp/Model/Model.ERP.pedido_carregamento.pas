unit Model.ERP.pedido_alm_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidoalmitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_motorista : Integer;
    Fid_veiculo : Integer;
    Fid_usuario : Integer;
    Fid_venda : Integer;
    Fd_inicio : indefinido;
    Fd_final : indefinido;
    Fd_rotulo : Boolean;
    Fd_lacre : Boolean;
    Fd_tampa : Boolean;
    Fd_total : Integer;
    Fd_qtd_rotulo : Integer;
    Fd_qtd_lacre : Integer;
    Fd_qtd_tampa : Integer;
    Fc_inicio : indefinido;
    Fc_final : indefinido;
    Fc_total : Integer;
    Fc_escovadeira : Boolean;
    Fc_envazamento : Boolean;
    Fc_carregamento : Boolean;
    Fc_qtd_escovadeira : Integer;
    Fc_qtd_envazamento : Integer;
    Fc_qtd_carregamento : Integer;
    Fr_cheiro : Integer;
    Fr_defeito : Integer;
    Fr_furado : Integer;
    Fr_manchado : Integer;
    Fr_vencido : Integer;
    Fr_total : Integer;
    Fobs : indefinido;
    Fid_funcionario_faturista : Integer;
    Fid_funcionario_producao : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_motorista(const Value: Integer);
    procedure Setid_veiculo(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setd_inicio(const Value: indefinido);
    procedure Setd_final(const Value: indefinido);
    procedure Setd_rotulo(const Value: Boolean);
    procedure Setd_lacre(const Value: Boolean);
    procedure Setd_tampa(const Value: Boolean);
    procedure Setd_total(const Value: Integer);
    procedure Setd_qtd_rotulo(const Value: Integer);
    procedure Setd_qtd_lacre(const Value: Integer);
    procedure Setd_qtd_tampa(const Value: Integer);
    procedure Setc_inicio(const Value: indefinido);
    procedure Setc_final(const Value: indefinido);
    procedure Setc_total(const Value: Integer);
    procedure Setc_escovadeira(const Value: Boolean);
    procedure Setc_envazamento(const Value: Boolean);
    procedure Setc_carregamento(const Value: Boolean);
    procedure Setc_qtd_escovadeira(const Value: Integer);
    procedure Setc_qtd_envazamento(const Value: Integer);
    procedure Setc_qtd_carregamento(const Value: Integer);
    procedure Setr_cheiro(const Value: Integer);
    procedure Setr_defeito(const Value: Integer);
    procedure Setr_furado(const Value: Integer);
    procedure Setr_manchado(const Value: Integer);
    procedure Setr_vencido(const Value: Integer);
    procedure Setr_total(const Value: Integer);
    procedure Setobs(const Value: indefinido);
    procedure Setid_funcionario_faturista(const Value: Integer);
    procedure Setid_funcionario_producao(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_motorista     : Integer read Fid_motorista write Setid_motorista;
    property id_veiculo     : Integer read Fid_veiculo write Setid_veiculo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property d_inicio     : indefinido read Fd_inicio write Setd_inicio;
    property d_final     : indefinido read Fd_final write Setd_final;
    property d_rotulo     : Boolean read Fd_rotulo write Setd_rotulo;
    property d_lacre     : Boolean read Fd_lacre write Setd_lacre;
    property d_tampa     : Boolean read Fd_tampa write Setd_tampa;
    property d_total     : Integer read Fd_total write Setd_total;
    property d_qtd_rotulo     : Integer read Fd_qtd_rotulo write Setd_qtd_rotulo;
    property d_qtd_lacre     : Integer read Fd_qtd_lacre write Setd_qtd_lacre;
    property d_qtd_tampa     : Integer read Fd_qtd_tampa write Setd_qtd_tampa;
    property c_inicio     : indefinido read Fc_inicio write Setc_inicio;
    property c_final     : indefinido read Fc_final write Setc_final;
    property c_total     : Integer read Fc_total write Setc_total;
    property c_escovadeira     : Boolean read Fc_escovadeira write Setc_escovadeira;
    property c_envazamento     : Boolean read Fc_envazamento write Setc_envazamento;
    property c_carregamento     : Boolean read Fc_carregamento write Setc_carregamento;
    property c_qtd_escovadeira     : Integer read Fc_qtd_escovadeira write Setc_qtd_escovadeira;
    property c_qtd_envazamento     : Integer read Fc_qtd_envazamento write Setc_qtd_envazamento;
    property c_qtd_carregamento     : Integer read Fc_qtd_carregamento write Setc_qtd_carregamento;
    property r_cheiro     : Integer read Fr_cheiro write Setr_cheiro;
    property r_defeito     : Integer read Fr_defeito write Setr_defeito;
    property r_furado     : Integer read Fr_furado write Setr_furado;
    property r_manchado     : Integer read Fr_manchado write Setr_manchado;
    property r_vencido     : Integer read Fr_vencido write Setr_vencido;
    property r_total     : Integer read Fr_total write Setr_total;
    property obs     : indefinido read Fobs write Setobs;
    property id_funcionario_faturista     : Integer read Fid_funcionario_faturista write Setid_funcionario_faturista;
    property id_funcionario_producao     : Integer read Fid_funcionario_producao write Setid_funcionario_producao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidoalmitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidoalmitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidoalmitem(Model).id;
Self.Fid_empresa         := TModelERPpedidoalmitem(Model).id_empresa;
Self.Fid_cliente         := TModelERPpedidoalmitem(Model).id_cliente;
Self.Fid_motorista         := TModelERPpedidoalmitem(Model).id_motorista;
Self.Fid_veiculo         := TModelERPpedidoalmitem(Model).id_veiculo;
Self.Fid_usuario         := TModelERPpedidoalmitem(Model).id_usuario;
Self.Fid_venda         := TModelERPpedidoalmitem(Model).id_venda;
Self.Fd_inicio         := TModelERPpedidoalmitem(Model).d_inicio;
Self.Fd_final         := TModelERPpedidoalmitem(Model).d_final;
Self.Fd_rotulo         := TModelERPpedidoalmitem(Model).d_rotulo;
Self.Fd_lacre         := TModelERPpedidoalmitem(Model).d_lacre;
Self.Fd_tampa         := TModelERPpedidoalmitem(Model).d_tampa;
Self.Fd_total         := TModelERPpedidoalmitem(Model).d_total;
Self.Fd_qtd_rotulo         := TModelERPpedidoalmitem(Model).d_qtd_rotulo;
Self.Fd_qtd_lacre         := TModelERPpedidoalmitem(Model).d_qtd_lacre;
Self.Fd_qtd_tampa         := TModelERPpedidoalmitem(Model).d_qtd_tampa;
Self.Fc_inicio         := TModelERPpedidoalmitem(Model).c_inicio;
Self.Fc_final         := TModelERPpedidoalmitem(Model).c_final;
Self.Fc_total         := TModelERPpedidoalmitem(Model).c_total;
Self.Fc_escovadeira         := TModelERPpedidoalmitem(Model).c_escovadeira;
Self.Fc_envazamento         := TModelERPpedidoalmitem(Model).c_envazamento;
Self.Fc_carregamento         := TModelERPpedidoalmitem(Model).c_carregamento;
Self.Fc_qtd_escovadeira         := TModelERPpedidoalmitem(Model).c_qtd_escovadeira;
Self.Fc_qtd_envazamento         := TModelERPpedidoalmitem(Model).c_qtd_envazamento;
Self.Fc_qtd_carregamento         := TModelERPpedidoalmitem(Model).c_qtd_carregamento;
Self.Fr_cheiro         := TModelERPpedidoalmitem(Model).r_cheiro;
Self.Fr_defeito         := TModelERPpedidoalmitem(Model).r_defeito;
Self.Fr_furado         := TModelERPpedidoalmitem(Model).r_furado;
Self.Fr_manchado         := TModelERPpedidoalmitem(Model).r_manchado;
Self.Fr_vencido         := TModelERPpedidoalmitem(Model).r_vencido;
Self.Fr_total         := TModelERPpedidoalmitem(Model).r_total;
Self.Fobs         := TModelERPpedidoalmitem(Model).obs;
Self.Fid_funcionario_faturista         := TModelERPpedidoalmitem(Model).id_funcionario_faturista;
Self.Fid_funcionario_producao         := TModelERPpedidoalmitem(Model).id_funcionario_producao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidoalmitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidoalmitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidoalmitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_motorista(const Value: Boolean);   
begin                
  Fid_motorista := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_veiculo(const Value: Boolean);   
begin                
  Fid_veiculo := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_inicio(const Value: Boolean);   
begin                
  Fd_inicio := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_final(const Value: Boolean);   
begin                
  Fd_final := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_rotulo(const Value: Boolean);   
begin                
  Fd_rotulo := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_lacre(const Value: Boolean);   
begin                
  Fd_lacre := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_tampa(const Value: Boolean);   
begin                
  Fd_tampa := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_total(const Value: Boolean);   
begin                
  Fd_total := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_qtd_rotulo(const Value: Boolean);   
begin                
  Fd_qtd_rotulo := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_qtd_lacre(const Value: Boolean);   
begin                
  Fd_qtd_lacre := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setd_qtd_tampa(const Value: Boolean);   
begin                
  Fd_qtd_tampa := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_inicio(const Value: Boolean);   
begin                
  Fc_inicio := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_final(const Value: Boolean);   
begin                
  Fc_final := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_total(const Value: Boolean);   
begin                
  Fc_total := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_escovadeira(const Value: Boolean);   
begin                
  Fc_escovadeira := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_envazamento(const Value: Boolean);   
begin                
  Fc_envazamento := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_carregamento(const Value: Boolean);   
begin                
  Fc_carregamento := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_qtd_escovadeira(const Value: Boolean);   
begin                
  Fc_qtd_escovadeira := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_qtd_envazamento(const Value: Boolean);   
begin                
  Fc_qtd_envazamento := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setc_qtd_carregamento(const Value: Boolean);   
begin                
  Fc_qtd_carregamento := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setr_cheiro(const Value: Boolean);   
begin                
  Fr_cheiro := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setr_defeito(const Value: Boolean);   
begin                
  Fr_defeito := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setr_furado(const Value: Boolean);   
begin                
  Fr_furado := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setr_manchado(const Value: Boolean);   
begin                
  Fr_manchado := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setr_vencido(const Value: Boolean);   
begin                
  Fr_vencido := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setr_total(const Value: Boolean);   
begin                
  Fr_total := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_funcionario_faturista(const Value: Boolean);   
begin                
  Fid_funcionario_faturista := Value;   
end;                 

procedure TModelERPpedidoalmitem.Setid_funcionario_producao(const Value: Boolean);   
begin                
  Fid_funcionario_producao := Value;   
end;                 


end.
