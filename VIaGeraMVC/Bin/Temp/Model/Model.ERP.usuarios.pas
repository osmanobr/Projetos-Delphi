unit Model.ERP.updatescript;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPupdatescript = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdt_cadastro : TDateTime;
    Fnome : WideString;
    Fsenha : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fcep : WideString;
    Fid_cidade : Integer;
    Fcpf : WideString;
    Ffone_residencia : WideString;
    Ffone_celular : WideString;
    Ftipo : WideString;
    Fdesconto_venda : Double;
    Fdesconto_receber : Double;
    Faltera_prc_unit_orc : Boolean;
    Faltera_prc_produto : Boolean;
    Faltera_data_venda : Boolean;
    Faltera_data_pgto : Boolean;
    Ffecha_venda : Boolean;
    Fquitar_receber : Boolean;
    Fquitar_pagar : Boolean;
    Fexibe_resumodia : Boolean;
    Fclick : Boolean;
    Fid_caixa : Integer;
    Fid_impressora : Integer;
    Fdata_caixa : WideString;
    Fjuro_receber : WideString;
    Fjuro_pagar : indefinido;
    Faltera_valor_receber : indefinido;
    Faltera_valor_pagar : indefinido;
    Funiao_conta : indefinido;
    Fgera_conta : indefinido;
    Ftransferencia_conta : indefinido;
    Fdesdobramento : indefinido;
    Fid_vendedor : Integer;
    Fexpedicao : Boolean;
    Funiao_orcamento : indefinido;
    Fcodigo_autorizacao : indefinido;
    Fmixvenda : indefinido;
    Fvendedor_venda : indefinido;
    Faltera_cxvenda : indefinido;
    Fbloqueio_cliente : Boolean;
    Faltera_obs : indefinido;
    Fliberacao_venda : indefinido;
    Facerto_estoque_equipamento : Boolean;
    Fpermite_exclusao_fabricacao : Boolean;
    Ftransferencia_estoque : Boolean;
    Faltera_ponto : Boolean;
    Falterar_serial : Boolean;
    Falterar_cadastro_romaneio : Boolean;
    Facerto_estoque : Integer;
    Faltera_preco_consulta_rapida : Boolean;
    Ffechar_troca : Boolean;
    Fclassificacao_os : Boolean;
    Fabrir_venda_uso : Boolean;
    Feditar_inventario : Boolean;
    Falterar_entrada_prevenda : Boolean;
    Fpercentual_minimo_entrada : Double;
    Fhabilitar_lancamento_balanco : Boolean;
    Fativo : Boolean;
    Fmulta : Boolean;
    Faltera_prc_unit_orc_mais : Boolean;
    Fentrada_nota : Boolean;
    Fmulta_receber : Boolean;
    Fuf : WideString;
    Falterar_insumo_fabricacao : Boolean;
    Fdelitem : Boolean;
    Fid_sti : Integer;
    Fdesconto_especial : Boolean;
    Fvalor_limite_nfe : Double;
    Fvalor_limite_nfce : Double;
    Flogin : WideString;
    Fpassword : WideString;
    Fpermissao_exclusao_arquivo : Boolean;
    Festorno_credito_usado : Boolean;
    Ftranferencia_portador_origem_debito : Integer;
    Ftransferencia_portador_destino_credito : Integer;
    Ftranferencia_portador_origem : Integer;
    Ftransferencia_portador_destino : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdt_cadastro(const Value: TDateTime);
    procedure Setnome(const Value: WideString);
    procedure Setsenha(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setcpf(const Value: WideString);
    procedure Setfone_residencia(const Value: WideString);
    procedure Setfone_celular(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setdesconto_venda(const Value: Double);
    procedure Setdesconto_receber(const Value: Double);
    procedure Setaltera_prc_unit_orc(const Value: Boolean);
    procedure Setaltera_prc_produto(const Value: Boolean);
    procedure Setaltera_data_venda(const Value: Boolean);
    procedure Setaltera_data_pgto(const Value: Boolean);
    procedure Setfecha_venda(const Value: Boolean);
    procedure Setquitar_receber(const Value: Boolean);
    procedure Setquitar_pagar(const Value: Boolean);
    procedure Setexibe_resumodia(const Value: Boolean);
    procedure Setclick(const Value: Boolean);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_impressora(const Value: Integer);
    procedure Setdata_caixa(const Value: WideString);
    procedure Setjuro_receber(const Value: WideString);
    procedure Setjuro_pagar(const Value: indefinido);
    procedure Setaltera_valor_receber(const Value: indefinido);
    procedure Setaltera_valor_pagar(const Value: indefinido);
    procedure Setuniao_conta(const Value: indefinido);
    procedure Setgera_conta(const Value: indefinido);
    procedure Settransferencia_conta(const Value: indefinido);
    procedure Setdesdobramento(const Value: indefinido);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setexpedicao(const Value: Boolean);
    procedure Setuniao_orcamento(const Value: indefinido);
    procedure Setcodigo_autorizacao(const Value: indefinido);
    procedure Setmixvenda(const Value: indefinido);
    procedure Setvendedor_venda(const Value: indefinido);
    procedure Setaltera_cxvenda(const Value: indefinido);
    procedure Setbloqueio_cliente(const Value: Boolean);
    procedure Setaltera_obs(const Value: indefinido);
    procedure Setliberacao_venda(const Value: indefinido);
    procedure Setacerto_estoque_equipamento(const Value: Boolean);
    procedure Setpermite_exclusao_fabricacao(const Value: Boolean);
    procedure Settransferencia_estoque(const Value: Boolean);
    procedure Setaltera_ponto(const Value: Boolean);
    procedure Setalterar_serial(const Value: Boolean);
    procedure Setalterar_cadastro_romaneio(const Value: Boolean);
    procedure Setacerto_estoque(const Value: Integer);
    procedure Setaltera_preco_consulta_rapida(const Value: Boolean);
    procedure Setfechar_troca(const Value: Boolean);
    procedure Setclassificacao_os(const Value: Boolean);
    procedure Setabrir_venda_uso(const Value: Boolean);
    procedure Seteditar_inventario(const Value: Boolean);
    procedure Setalterar_entrada_prevenda(const Value: Boolean);
    procedure Setpercentual_minimo_entrada(const Value: Double);
    procedure Sethabilitar_lancamento_balanco(const Value: Boolean);
    procedure Setativo(const Value: Boolean);
    procedure Setmulta(const Value: Boolean);
    procedure Setaltera_prc_unit_orc_mais(const Value: Boolean);
    procedure Setentrada_nota(const Value: Boolean);
    procedure Setmulta_receber(const Value: Boolean);
    procedure Setuf(const Value: WideString);
    procedure Setalterar_insumo_fabricacao(const Value: Boolean);
    procedure Setdelitem(const Value: Boolean);
    procedure Setid_sti(const Value: Integer);
    procedure Setdesconto_especial(const Value: Boolean);
    procedure Setvalor_limite_nfe(const Value: Double);
    procedure Setvalor_limite_nfce(const Value: Double);
    procedure Setlogin(const Value: WideString);
    procedure Setpassword(const Value: WideString);
    procedure Setpermissao_exclusao_arquivo(const Value: Boolean);
    procedure Setestorno_credito_usado(const Value: Boolean);
    procedure Settranferencia_portador_origem_debito(const Value: Integer);
    procedure Settransferencia_portador_destino_credito(const Value: Integer);
    procedure Settranferencia_portador_origem(const Value: Integer);
    procedure Settransferencia_portador_destino(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property dt_cadastro     : TDateTime read Fdt_cadastro write Setdt_cadastro;
    property nome     : WideString read Fnome write Setnome;
    property senha     : WideString read Fsenha write Setsenha;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property cep     : WideString read Fcep write Setcep;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property cpf     : WideString read Fcpf write Setcpf;
    property fone_residencia     : WideString read Ffone_residencia write Setfone_residencia;
    property fone_celular     : WideString read Ffone_celular write Setfone_celular;
    property tipo     : WideString read Ftipo write Settipo;
    property desconto_venda     : Double read Fdesconto_venda write Setdesconto_venda;
    property desconto_receber     : Double read Fdesconto_receber write Setdesconto_receber;
    property altera_prc_unit_orc     : Boolean read Faltera_prc_unit_orc write Setaltera_prc_unit_orc;
    property altera_prc_produto     : Boolean read Faltera_prc_produto write Setaltera_prc_produto;
    property altera_data_venda     : Boolean read Faltera_data_venda write Setaltera_data_venda;
    property altera_data_pgto     : Boolean read Faltera_data_pgto write Setaltera_data_pgto;
    property fecha_venda     : Boolean read Ffecha_venda write Setfecha_venda;
    property quitar_receber     : Boolean read Fquitar_receber write Setquitar_receber;
    property quitar_pagar     : Boolean read Fquitar_pagar write Setquitar_pagar;
    property exibe_resumodia     : Boolean read Fexibe_resumodia write Setexibe_resumodia;
    property click     : Boolean read Fclick write Setclick;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_impressora     : Integer read Fid_impressora write Setid_impressora;
    property data_caixa     : WideString read Fdata_caixa write Setdata_caixa;
    property juro_receber     : WideString read Fjuro_receber write Setjuro_receber;
    property juro_pagar     : indefinido read Fjuro_pagar write Setjuro_pagar;
    property altera_valor_receber     : indefinido read Faltera_valor_receber write Setaltera_valor_receber;
    property altera_valor_pagar     : indefinido read Faltera_valor_pagar write Setaltera_valor_pagar;
    property uniao_conta     : indefinido read Funiao_conta write Setuniao_conta;
    property gera_conta     : indefinido read Fgera_conta write Setgera_conta;
    property transferencia_conta     : indefinido read Ftransferencia_conta write Settransferencia_conta;
    property desdobramento     : indefinido read Fdesdobramento write Setdesdobramento;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property expedicao     : Boolean read Fexpedicao write Setexpedicao;
    property uniao_orcamento     : indefinido read Funiao_orcamento write Setuniao_orcamento;
    property codigo_autorizacao     : indefinido read Fcodigo_autorizacao write Setcodigo_autorizacao;
    property mixvenda     : indefinido read Fmixvenda write Setmixvenda;
    property vendedor_venda     : indefinido read Fvendedor_venda write Setvendedor_venda;
    property altera_cxvenda     : indefinido read Faltera_cxvenda write Setaltera_cxvenda;
    property bloqueio_cliente     : Boolean read Fbloqueio_cliente write Setbloqueio_cliente;
    property altera_obs     : indefinido read Faltera_obs write Setaltera_obs;
    property liberacao_venda     : indefinido read Fliberacao_venda write Setliberacao_venda;
    property acerto_estoque_equipamento     : Boolean read Facerto_estoque_equipamento write Setacerto_estoque_equipamento;
    property permite_exclusao_fabricacao     : Boolean read Fpermite_exclusao_fabricacao write Setpermite_exclusao_fabricacao;
    property transferencia_estoque     : Boolean read Ftransferencia_estoque write Settransferencia_estoque;
    property altera_ponto     : Boolean read Faltera_ponto write Setaltera_ponto;
    property alterar_serial     : Boolean read Falterar_serial write Setalterar_serial;
    property alterar_cadastro_romaneio     : Boolean read Falterar_cadastro_romaneio write Setalterar_cadastro_romaneio;
    property acerto_estoque     : Integer read Facerto_estoque write Setacerto_estoque;
    property altera_preco_consulta_rapida     : Boolean read Faltera_preco_consulta_rapida write Setaltera_preco_consulta_rapida;
    property fechar_troca     : Boolean read Ffechar_troca write Setfechar_troca;
    property classificacao_os     : Boolean read Fclassificacao_os write Setclassificacao_os;
    property abrir_venda_uso     : Boolean read Fabrir_venda_uso write Setabrir_venda_uso;
    property editar_inventario     : Boolean read Feditar_inventario write Seteditar_inventario;
    property alterar_entrada_prevenda     : Boolean read Falterar_entrada_prevenda write Setalterar_entrada_prevenda;
    property percentual_minimo_entrada     : Double read Fpercentual_minimo_entrada write Setpercentual_minimo_entrada;
    property habilitar_lancamento_balanco     : Boolean read Fhabilitar_lancamento_balanco write Sethabilitar_lancamento_balanco;
    property ativo     : Boolean read Fativo write Setativo;
    property multa     : Boolean read Fmulta write Setmulta;
    property altera_prc_unit_orc_mais     : Boolean read Faltera_prc_unit_orc_mais write Setaltera_prc_unit_orc_mais;
    property entrada_nota     : Boolean read Fentrada_nota write Setentrada_nota;
    property multa_receber     : Boolean read Fmulta_receber write Setmulta_receber;
    property uf     : WideString read Fuf write Setuf;
    property alterar_insumo_fabricacao     : Boolean read Falterar_insumo_fabricacao write Setalterar_insumo_fabricacao;
    property delitem     : Boolean read Fdelitem write Setdelitem;
    property id_sti     : Integer read Fid_sti write Setid_sti;
    property desconto_especial     : Boolean read Fdesconto_especial write Setdesconto_especial;
    property valor_limite_nfe     : Double read Fvalor_limite_nfe write Setvalor_limite_nfe;
    property valor_limite_nfce     : Double read Fvalor_limite_nfce write Setvalor_limite_nfce;
    property login     : WideString read Flogin write Setlogin;
    property password     : WideString read Fpassword write Setpassword;
    property permissao_exclusao_arquivo     : Boolean read Fpermissao_exclusao_arquivo write Setpermissao_exclusao_arquivo;
    property estorno_credito_usado     : Boolean read Festorno_credito_usado write Setestorno_credito_usado;
    property tranferencia_portador_origem_debito     : Integer read Ftranferencia_portador_origem_debito write Settranferencia_portador_origem_debito;
    property transferencia_portador_destino_credito     : Integer read Ftransferencia_portador_destino_credito write Settransferencia_portador_destino_credito;
    property tranferencia_portador_origem     : Integer read Ftranferencia_portador_origem write Settranferencia_portador_origem;
    property transferencia_portador_destino     : Integer read Ftransferencia_portador_destino write Settransferencia_portador_destino;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPupdatescript.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPupdatescript) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPupdatescript(Model).id;
Self.Fid_empresa         := TModelERPupdatescript(Model).id_empresa;
Self.Fdt_cadastro         := TModelERPupdatescript(Model).dt_cadastro;
Self.Fnome         := TModelERPupdatescript(Model).nome;
Self.Fsenha         := TModelERPupdatescript(Model).senha;
Self.Fendereco         := TModelERPupdatescript(Model).endereco;
Self.Fbairro         := TModelERPupdatescript(Model).bairro;
Self.Fcep         := TModelERPupdatescript(Model).cep;
Self.Fid_cidade         := TModelERPupdatescript(Model).id_cidade;
Self.Fcpf         := TModelERPupdatescript(Model).cpf;
Self.Ffone_residencia         := TModelERPupdatescript(Model).fone_residencia;
Self.Ffone_celular         := TModelERPupdatescript(Model).fone_celular;
Self.Ftipo         := TModelERPupdatescript(Model).tipo;
Self.Fdesconto_venda         := TModelERPupdatescript(Model).desconto_venda;
Self.Fdesconto_receber         := TModelERPupdatescript(Model).desconto_receber;
Self.Faltera_prc_unit_orc         := TModelERPupdatescript(Model).altera_prc_unit_orc;
Self.Faltera_prc_produto         := TModelERPupdatescript(Model).altera_prc_produto;
Self.Faltera_data_venda         := TModelERPupdatescript(Model).altera_data_venda;
Self.Faltera_data_pgto         := TModelERPupdatescript(Model).altera_data_pgto;
Self.Ffecha_venda         := TModelERPupdatescript(Model).fecha_venda;
Self.Fquitar_receber         := TModelERPupdatescript(Model).quitar_receber;
Self.Fquitar_pagar         := TModelERPupdatescript(Model).quitar_pagar;
Self.Fexibe_resumodia         := TModelERPupdatescript(Model).exibe_resumodia;
Self.Fclick         := TModelERPupdatescript(Model).click;
Self.Fid_caixa         := TModelERPupdatescript(Model).id_caixa;
Self.Fid_impressora         := TModelERPupdatescript(Model).id_impressora;
Self.Fdata_caixa         := TModelERPupdatescript(Model).data_caixa;
Self.Fjuro_receber         := TModelERPupdatescript(Model).juro_receber;
Self.Fjuro_pagar         := TModelERPupdatescript(Model).juro_pagar;
Self.Faltera_valor_receber         := TModelERPupdatescript(Model).altera_valor_receber;
Self.Faltera_valor_pagar         := TModelERPupdatescript(Model).altera_valor_pagar;
Self.Funiao_conta         := TModelERPupdatescript(Model).uniao_conta;
Self.Fgera_conta         := TModelERPupdatescript(Model).gera_conta;
Self.Ftransferencia_conta         := TModelERPupdatescript(Model).transferencia_conta;
Self.Fdesdobramento         := TModelERPupdatescript(Model).desdobramento;
Self.Fid_vendedor         := TModelERPupdatescript(Model).id_vendedor;
Self.Fexpedicao         := TModelERPupdatescript(Model).expedicao;
Self.Funiao_orcamento         := TModelERPupdatescript(Model).uniao_orcamento;
Self.Fcodigo_autorizacao         := TModelERPupdatescript(Model).codigo_autorizacao;
Self.Fmixvenda         := TModelERPupdatescript(Model).mixvenda;
Self.Fvendedor_venda         := TModelERPupdatescript(Model).vendedor_venda;
Self.Faltera_cxvenda         := TModelERPupdatescript(Model).altera_cxvenda;
Self.Fbloqueio_cliente         := TModelERPupdatescript(Model).bloqueio_cliente;
Self.Faltera_obs         := TModelERPupdatescript(Model).altera_obs;
Self.Fliberacao_venda         := TModelERPupdatescript(Model).liberacao_venda;
Self.Facerto_estoque_equipamento         := TModelERPupdatescript(Model).acerto_estoque_equipamento;
Self.Fpermite_exclusao_fabricacao         := TModelERPupdatescript(Model).permite_exclusao_fabricacao;
Self.Ftransferencia_estoque         := TModelERPupdatescript(Model).transferencia_estoque;
Self.Faltera_ponto         := TModelERPupdatescript(Model).altera_ponto;
Self.Falterar_serial         := TModelERPupdatescript(Model).alterar_serial;
Self.Falterar_cadastro_romaneio         := TModelERPupdatescript(Model).alterar_cadastro_romaneio;
Self.Facerto_estoque         := TModelERPupdatescript(Model).acerto_estoque;
Self.Faltera_preco_consulta_rapida         := TModelERPupdatescript(Model).altera_preco_consulta_rapida;
Self.Ffechar_troca         := TModelERPupdatescript(Model).fechar_troca;
Self.Fclassificacao_os         := TModelERPupdatescript(Model).classificacao_os;
Self.Fabrir_venda_uso         := TModelERPupdatescript(Model).abrir_venda_uso;
Self.Feditar_inventario         := TModelERPupdatescript(Model).editar_inventario;
Self.Falterar_entrada_prevenda         := TModelERPupdatescript(Model).alterar_entrada_prevenda;
Self.Fpercentual_minimo_entrada         := TModelERPupdatescript(Model).percentual_minimo_entrada;
Self.Fhabilitar_lancamento_balanco         := TModelERPupdatescript(Model).habilitar_lancamento_balanco;
Self.Fativo         := TModelERPupdatescript(Model).ativo;
Self.Fmulta         := TModelERPupdatescript(Model).multa;
Self.Faltera_prc_unit_orc_mais         := TModelERPupdatescript(Model).altera_prc_unit_orc_mais;
Self.Fentrada_nota         := TModelERPupdatescript(Model).entrada_nota;
Self.Fmulta_receber         := TModelERPupdatescript(Model).multa_receber;
Self.Fuf         := TModelERPupdatescript(Model).uf;
Self.Falterar_insumo_fabricacao         := TModelERPupdatescript(Model).alterar_insumo_fabricacao;
Self.Fdelitem         := TModelERPupdatescript(Model).delitem;
Self.Fid_sti         := TModelERPupdatescript(Model).id_sti;
Self.Fdesconto_especial         := TModelERPupdatescript(Model).desconto_especial;
Self.Fvalor_limite_nfe         := TModelERPupdatescript(Model).valor_limite_nfe;
Self.Fvalor_limite_nfce         := TModelERPupdatescript(Model).valor_limite_nfce;
Self.Flogin         := TModelERPupdatescript(Model).login;
Self.Fpassword         := TModelERPupdatescript(Model).password;
Self.Fpermissao_exclusao_arquivo         := TModelERPupdatescript(Model).permissao_exclusao_arquivo;
Self.Festorno_credito_usado         := TModelERPupdatescript(Model).estorno_credito_usado;
Self.Ftranferencia_portador_origem_debito         := TModelERPupdatescript(Model).tranferencia_portador_origem_debito;
Self.Ftransferencia_portador_destino_credito         := TModelERPupdatescript(Model).transferencia_portador_destino_credito;
Self.Ftranferencia_portador_origem         := TModelERPupdatescript(Model).tranferencia_portador_origem;
Self.Ftransferencia_portador_destino         := TModelERPupdatescript(Model).transferencia_portador_destino;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPupdatescript.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPupdatescript.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPupdatescript.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPupdatescript.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPupdatescript.Setdt_cadastro(const Value: Boolean);   
begin                
  Fdt_cadastro := Value;   
end;                 

procedure TModelERPupdatescript.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPupdatescript.Setsenha(const Value: Boolean);   
begin                
  Fsenha := Value;   
end;                 

procedure TModelERPupdatescript.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPupdatescript.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPupdatescript.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPupdatescript.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPupdatescript.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPupdatescript.Setfone_residencia(const Value: Boolean);   
begin                
  Ffone_residencia := Value;   
end;                 

procedure TModelERPupdatescript.Setfone_celular(const Value: Boolean);   
begin                
  Ffone_celular := Value;   
end;                 

procedure TModelERPupdatescript.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPupdatescript.Setdesconto_venda(const Value: Boolean);   
begin                
  Fdesconto_venda := Value;   
end;                 

procedure TModelERPupdatescript.Setdesconto_receber(const Value: Boolean);   
begin                
  Fdesconto_receber := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_prc_unit_orc(const Value: Boolean);   
begin                
  Faltera_prc_unit_orc := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_prc_produto(const Value: Boolean);   
begin                
  Faltera_prc_produto := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_data_venda(const Value: Boolean);   
begin                
  Faltera_data_venda := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_data_pgto(const Value: Boolean);   
begin                
  Faltera_data_pgto := Value;   
end;                 

procedure TModelERPupdatescript.Setfecha_venda(const Value: Boolean);   
begin                
  Ffecha_venda := Value;   
end;                 

procedure TModelERPupdatescript.Setquitar_receber(const Value: Boolean);   
begin                
  Fquitar_receber := Value;   
end;                 

procedure TModelERPupdatescript.Setquitar_pagar(const Value: Boolean);   
begin                
  Fquitar_pagar := Value;   
end;                 

procedure TModelERPupdatescript.Setexibe_resumodia(const Value: Boolean);   
begin                
  Fexibe_resumodia := Value;   
end;                 

procedure TModelERPupdatescript.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPupdatescript.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPupdatescript.Setid_impressora(const Value: Boolean);   
begin                
  Fid_impressora := Value;   
end;                 

procedure TModelERPupdatescript.Setdata_caixa(const Value: Boolean);   
begin                
  Fdata_caixa := Value;   
end;                 

procedure TModelERPupdatescript.Setjuro_receber(const Value: Boolean);   
begin                
  Fjuro_receber := Value;   
end;                 

procedure TModelERPupdatescript.Setjuro_pagar(const Value: Boolean);   
begin                
  Fjuro_pagar := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_valor_receber(const Value: Boolean);   
begin                
  Faltera_valor_receber := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_valor_pagar(const Value: Boolean);   
begin                
  Faltera_valor_pagar := Value;   
end;                 

procedure TModelERPupdatescript.Setuniao_conta(const Value: Boolean);   
begin                
  Funiao_conta := Value;   
end;                 

procedure TModelERPupdatescript.Setgera_conta(const Value: Boolean);   
begin                
  Fgera_conta := Value;   
end;                 

procedure TModelERPupdatescript.Settransferencia_conta(const Value: Boolean);   
begin                
  Ftransferencia_conta := Value;   
end;                 

procedure TModelERPupdatescript.Setdesdobramento(const Value: Boolean);   
begin                
  Fdesdobramento := Value;   
end;                 

procedure TModelERPupdatescript.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPupdatescript.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPupdatescript.Setuniao_orcamento(const Value: Boolean);   
begin                
  Funiao_orcamento := Value;   
end;                 

procedure TModelERPupdatescript.Setcodigo_autorizacao(const Value: Boolean);   
begin                
  Fcodigo_autorizacao := Value;   
end;                 

procedure TModelERPupdatescript.Setmixvenda(const Value: Boolean);   
begin                
  Fmixvenda := Value;   
end;                 

procedure TModelERPupdatescript.Setvendedor_venda(const Value: Boolean);   
begin                
  Fvendedor_venda := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_cxvenda(const Value: Boolean);   
begin                
  Faltera_cxvenda := Value;   
end;                 

procedure TModelERPupdatescript.Setbloqueio_cliente(const Value: Boolean);   
begin                
  Fbloqueio_cliente := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_obs(const Value: Boolean);   
begin                
  Faltera_obs := Value;   
end;                 

procedure TModelERPupdatescript.Setliberacao_venda(const Value: Boolean);   
begin                
  Fliberacao_venda := Value;   
end;                 

procedure TModelERPupdatescript.Setacerto_estoque_equipamento(const Value: Boolean);   
begin                
  Facerto_estoque_equipamento := Value;   
end;                 

procedure TModelERPupdatescript.Setpermite_exclusao_fabricacao(const Value: Boolean);   
begin                
  Fpermite_exclusao_fabricacao := Value;   
end;                 

procedure TModelERPupdatescript.Settransferencia_estoque(const Value: Boolean);   
begin                
  Ftransferencia_estoque := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_ponto(const Value: Boolean);   
begin                
  Faltera_ponto := Value;   
end;                 

procedure TModelERPupdatescript.Setalterar_serial(const Value: Boolean);   
begin                
  Falterar_serial := Value;   
end;                 

procedure TModelERPupdatescript.Setalterar_cadastro_romaneio(const Value: Boolean);   
begin                
  Falterar_cadastro_romaneio := Value;   
end;                 

procedure TModelERPupdatescript.Setacerto_estoque(const Value: Boolean);   
begin                
  Facerto_estoque := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_preco_consulta_rapida(const Value: Boolean);   
begin                
  Faltera_preco_consulta_rapida := Value;   
end;                 

procedure TModelERPupdatescript.Setfechar_troca(const Value: Boolean);   
begin                
  Ffechar_troca := Value;   
end;                 

procedure TModelERPupdatescript.Setclassificacao_os(const Value: Boolean);   
begin                
  Fclassificacao_os := Value;   
end;                 

procedure TModelERPupdatescript.Setabrir_venda_uso(const Value: Boolean);   
begin                
  Fabrir_venda_uso := Value;   
end;                 

procedure TModelERPupdatescript.Seteditar_inventario(const Value: Boolean);   
begin                
  Feditar_inventario := Value;   
end;                 

procedure TModelERPupdatescript.Setalterar_entrada_prevenda(const Value: Boolean);   
begin                
  Falterar_entrada_prevenda := Value;   
end;                 

procedure TModelERPupdatescript.Setpercentual_minimo_entrada(const Value: Boolean);   
begin                
  Fpercentual_minimo_entrada := Value;   
end;                 

procedure TModelERPupdatescript.Sethabilitar_lancamento_balanco(const Value: Boolean);   
begin                
  Fhabilitar_lancamento_balanco := Value;   
end;                 

procedure TModelERPupdatescript.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPupdatescript.Setmulta(const Value: Boolean);   
begin                
  Fmulta := Value;   
end;                 

procedure TModelERPupdatescript.Setaltera_prc_unit_orc_mais(const Value: Boolean);   
begin                
  Faltera_prc_unit_orc_mais := Value;   
end;                 

procedure TModelERPupdatescript.Setentrada_nota(const Value: Boolean);   
begin                
  Fentrada_nota := Value;   
end;                 

procedure TModelERPupdatescript.Setmulta_receber(const Value: Boolean);   
begin                
  Fmulta_receber := Value;   
end;                 

procedure TModelERPupdatescript.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPupdatescript.Setalterar_insumo_fabricacao(const Value: Boolean);   
begin                
  Falterar_insumo_fabricacao := Value;   
end;                 

procedure TModelERPupdatescript.Setdelitem(const Value: Boolean);   
begin                
  Fdelitem := Value;   
end;                 

procedure TModelERPupdatescript.Setid_sti(const Value: Boolean);   
begin                
  Fid_sti := Value;   
end;                 

procedure TModelERPupdatescript.Setdesconto_especial(const Value: Boolean);   
begin                
  Fdesconto_especial := Value;   
end;                 

procedure TModelERPupdatescript.Setvalor_limite_nfe(const Value: Boolean);   
begin                
  Fvalor_limite_nfe := Value;   
end;                 

procedure TModelERPupdatescript.Setvalor_limite_nfce(const Value: Boolean);   
begin                
  Fvalor_limite_nfce := Value;   
end;                 

procedure TModelERPupdatescript.Setlogin(const Value: Boolean);   
begin                
  Flogin := Value;   
end;                 

procedure TModelERPupdatescript.Setpassword(const Value: Boolean);   
begin                
  Fpassword := Value;   
end;                 

procedure TModelERPupdatescript.Setpermissao_exclusao_arquivo(const Value: Boolean);   
begin                
  Fpermissao_exclusao_arquivo := Value;   
end;                 

procedure TModelERPupdatescript.Setestorno_credito_usado(const Value: Boolean);   
begin                
  Festorno_credito_usado := Value;   
end;                 

procedure TModelERPupdatescript.Settranferencia_portador_origem_debito(const Value: Boolean);   
begin                
  Ftranferencia_portador_origem_debito := Value;   
end;                 

procedure TModelERPupdatescript.Settransferencia_portador_destino_credito(const Value: Boolean);   
begin                
  Ftransferencia_portador_destino_credito := Value;   
end;                 

procedure TModelERPupdatescript.Settranferencia_portador_origem(const Value: Boolean);   
begin                
  Ftranferencia_portador_origem := Value;   
end;                 

procedure TModelERPupdatescript.Settransferencia_portador_destino(const Value: Boolean);   
begin                
  Ftransferencia_portador_destino := Value;   
end;                 


end.
