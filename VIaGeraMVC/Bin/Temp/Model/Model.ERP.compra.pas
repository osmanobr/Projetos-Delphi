unit Model.ERP.composicao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomposicao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fnf : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fvl_produtos : Double;
    Fvl_desconto : Double;
    Fvl_frete : Double;
    Fvl_icms : Double;
    Fvl_ipi : Double;
    Fvl_acrescimo : Double;
    Fvl_total : Double;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fjuros : WideString;
    Fcomentrada : WideString;
    Fid_conta : WideString;
    Fvl_pago : Double;
    Fid_caixa : Integer;
    Fgerado : WideString;
    Fduplicatacheque : WideString;
    Fparcelas : Integer;
    Fvl_juros : Double;
    Fintervalo : Integer;
    Fdata_entrada : TDateTime;
    Fid_forma : Integer;
    Fvl_substituicao : Double;
    Fserie : WideString;
    Fproduto_insumo : WideString;
    Festoque : WideString;
    Fid_cfop : Integer;
    Fbase_icms : Double;
    Fbase_st : Double;
    Fnfe_chave : WideString;
    Fobs_fiscal : indefinido;
    Fobs_nota : indefinido;
    Ffatura : WideString;
    Fvl_pis : Double;
    Fvl_cofins : Double;
    Fgnre_porcentagem : Double;
    Ffrete_porcentagem : Double;
    Fpeso_desossa : Double;
    Fbusca : WideString;
    Fcod_di : Integer;
    Fnumero_di : WideString;
    Fnum_acdraw : WideString;
    Fxml : indefinido;
    Fcliente_estoque_terceiro : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setnf(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setvl_produtos(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setvl_ipi(const Value: Double);
    procedure Setvl_acrescimo(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setjuros(const Value: WideString);
    procedure Setcomentrada(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setvl_pago(const Value: Double);
    procedure Setid_caixa(const Value: Integer);
    procedure Setgerado(const Value: WideString);
    procedure Setduplicatacheque(const Value: WideString);
    procedure Setparcelas(const Value: Integer);
    procedure Setvl_juros(const Value: Double);
    procedure Setintervalo(const Value: Integer);
    procedure Setdata_entrada(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setvl_substituicao(const Value: Double);
    procedure Setserie(const Value: WideString);
    procedure Setproduto_insumo(const Value: WideString);
    procedure Setestoque(const Value: WideString);
    procedure Setid_cfop(const Value: Integer);
    procedure Setbase_icms(const Value: Double);
    procedure Setbase_st(const Value: Double);
    procedure Setnfe_chave(const Value: WideString);
    procedure Setobs_fiscal(const Value: indefinido);
    procedure Setobs_nota(const Value: indefinido);
    procedure Setfatura(const Value: WideString);
    procedure Setvl_pis(const Value: Double);
    procedure Setvl_cofins(const Value: Double);
    procedure Setgnre_porcentagem(const Value: Double);
    procedure Setfrete_porcentagem(const Value: Double);
    procedure Setpeso_desossa(const Value: Double);
    procedure Setbusca(const Value: WideString);
    procedure Setcod_di(const Value: Integer);
    procedure Setnumero_di(const Value: WideString);
    procedure Setnum_acdraw(const Value: WideString);
    procedure Setxml(const Value: indefinido);
    procedure Setcliente_estoque_terceiro(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property nf     : WideString read Fnf write Setnf;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property vl_produtos     : Double read Fvl_produtos write Setvl_produtos;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property vl_acrescimo     : Double read Fvl_acrescimo write Setvl_acrescimo;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;
    property juros     : WideString read Fjuros write Setjuros;
    property comentrada     : WideString read Fcomentrada write Setcomentrada;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property gerado     : WideString read Fgerado write Setgerado;
    property duplicatacheque     : WideString read Fduplicatacheque write Setduplicatacheque;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property data_entrada     : TDateTime read Fdata_entrada write Setdata_entrada;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property vl_substituicao     : Double read Fvl_substituicao write Setvl_substituicao;
    property serie     : WideString read Fserie write Setserie;
    property produto_insumo     : WideString read Fproduto_insumo write Setproduto_insumo;
    property estoque     : WideString read Festoque write Setestoque;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property base_st     : Double read Fbase_st write Setbase_st;
    property nfe_chave     : WideString read Fnfe_chave write Setnfe_chave;
    property obs_fiscal     : indefinido read Fobs_fiscal write Setobs_fiscal;
    property obs_nota     : indefinido read Fobs_nota write Setobs_nota;
    property fatura     : WideString read Ffatura write Setfatura;
    property vl_pis     : Double read Fvl_pis write Setvl_pis;
    property vl_cofins     : Double read Fvl_cofins write Setvl_cofins;
    property gnre_porcentagem     : Double read Fgnre_porcentagem write Setgnre_porcentagem;
    property frete_porcentagem     : Double read Ffrete_porcentagem write Setfrete_porcentagem;
    property peso_desossa     : Double read Fpeso_desossa write Setpeso_desossa;
    property busca     : WideString read Fbusca write Setbusca;
    property cod_di     : Integer read Fcod_di write Setcod_di;
    property numero_di     : WideString read Fnumero_di write Setnumero_di;
    property num_acdraw     : WideString read Fnum_acdraw write Setnum_acdraw;
    property xml     : indefinido read Fxml write Setxml;
    property cliente_estoque_terceiro     : Integer read Fcliente_estoque_terceiro write Setcliente_estoque_terceiro;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomposicao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomposicao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomposicao(Model).id;
Self.Fid_empresa         := TModelERPcomposicao(Model).id_empresa;
Self.Fdata         := TModelERPcomposicao(Model).data;
Self.Fnf         := TModelERPcomposicao(Model).nf;
Self.Fid_fornecedor         := TModelERPcomposicao(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPcomposicao(Model).nome_fornecedor;
Self.Fvl_produtos         := TModelERPcomposicao(Model).vl_produtos;
Self.Fvl_desconto         := TModelERPcomposicao(Model).vl_desconto;
Self.Fvl_frete         := TModelERPcomposicao(Model).vl_frete;
Self.Fvl_icms         := TModelERPcomposicao(Model).vl_icms;
Self.Fvl_ipi         := TModelERPcomposicao(Model).vl_ipi;
Self.Fvl_acrescimo         := TModelERPcomposicao(Model).vl_acrescimo;
Self.Fvl_total         := TModelERPcomposicao(Model).vl_total;
Self.Fid_usuario         := TModelERPcomposicao(Model).id_usuario;
Self.Fclick         := TModelERPcomposicao(Model).click;
Self.Fjuros         := TModelERPcomposicao(Model).juros;
Self.Fcomentrada         := TModelERPcomposicao(Model).comentrada;
Self.Fid_conta         := TModelERPcomposicao(Model).id_conta;
Self.Fvl_pago         := TModelERPcomposicao(Model).vl_pago;
Self.Fid_caixa         := TModelERPcomposicao(Model).id_caixa;
Self.Fgerado         := TModelERPcomposicao(Model).gerado;
Self.Fduplicatacheque         := TModelERPcomposicao(Model).duplicatacheque;
Self.Fparcelas         := TModelERPcomposicao(Model).parcelas;
Self.Fvl_juros         := TModelERPcomposicao(Model).vl_juros;
Self.Fintervalo         := TModelERPcomposicao(Model).intervalo;
Self.Fdata_entrada         := TModelERPcomposicao(Model).data_entrada;
Self.Fid_forma         := TModelERPcomposicao(Model).id_forma;
Self.Fvl_substituicao         := TModelERPcomposicao(Model).vl_substituicao;
Self.Fserie         := TModelERPcomposicao(Model).serie;
Self.Fproduto_insumo         := TModelERPcomposicao(Model).produto_insumo;
Self.Festoque         := TModelERPcomposicao(Model).estoque;
Self.Fid_cfop         := TModelERPcomposicao(Model).id_cfop;
Self.Fbase_icms         := TModelERPcomposicao(Model).base_icms;
Self.Fbase_st         := TModelERPcomposicao(Model).base_st;
Self.Fnfe_chave         := TModelERPcomposicao(Model).nfe_chave;
Self.Fobs_fiscal         := TModelERPcomposicao(Model).obs_fiscal;
Self.Fobs_nota         := TModelERPcomposicao(Model).obs_nota;
Self.Ffatura         := TModelERPcomposicao(Model).fatura;
Self.Fvl_pis         := TModelERPcomposicao(Model).vl_pis;
Self.Fvl_cofins         := TModelERPcomposicao(Model).vl_cofins;
Self.Fgnre_porcentagem         := TModelERPcomposicao(Model).gnre_porcentagem;
Self.Ffrete_porcentagem         := TModelERPcomposicao(Model).frete_porcentagem;
Self.Fpeso_desossa         := TModelERPcomposicao(Model).peso_desossa;
Self.Fbusca         := TModelERPcomposicao(Model).busca;
Self.Fcod_di         := TModelERPcomposicao(Model).cod_di;
Self.Fnumero_di         := TModelERPcomposicao(Model).numero_di;
Self.Fnum_acdraw         := TModelERPcomposicao(Model).num_acdraw;
Self.Fxml         := TModelERPcomposicao(Model).xml;
Self.Fcliente_estoque_terceiro         := TModelERPcomposicao(Model).cliente_estoque_terceiro;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomposicao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomposicao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomposicao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomposicao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomposicao.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomposicao.Setnf(const Value: Boolean);   
begin                
  Fnf := Value;   
end;                 

procedure TModelERPcomposicao.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPcomposicao.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_produtos(const Value: Boolean);   
begin                
  Fvl_produtos := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_acrescimo(const Value: Boolean);   
begin                
  Fvl_acrescimo := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPcomposicao.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPcomposicao.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcomposicao.Setjuros(const Value: Boolean);   
begin                
  Fjuros := Value;   
end;                 

procedure TModelERPcomposicao.Setcomentrada(const Value: Boolean);   
begin                
  Fcomentrada := Value;   
end;                 

procedure TModelERPcomposicao.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPcomposicao.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcomposicao.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPcomposicao.Setduplicatacheque(const Value: Boolean);   
begin                
  Fduplicatacheque := Value;   
end;                 

procedure TModelERPcomposicao.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPcomposicao.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPcomposicao.Setdata_entrada(const Value: Boolean);   
begin                
  Fdata_entrada := Value;   
end;                 

procedure TModelERPcomposicao.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_substituicao(const Value: Boolean);   
begin                
  Fvl_substituicao := Value;   
end;                 

procedure TModelERPcomposicao.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPcomposicao.Setproduto_insumo(const Value: Boolean);   
begin                
  Fproduto_insumo := Value;   
end;                 

procedure TModelERPcomposicao.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPcomposicao.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPcomposicao.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPcomposicao.Setbase_st(const Value: Boolean);   
begin                
  Fbase_st := Value;   
end;                 

procedure TModelERPcomposicao.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPcomposicao.Setobs_fiscal(const Value: Boolean);   
begin                
  Fobs_fiscal := Value;   
end;                 

procedure TModelERPcomposicao.Setobs_nota(const Value: Boolean);   
begin                
  Fobs_nota := Value;   
end;                 

procedure TModelERPcomposicao.Setfatura(const Value: Boolean);   
begin                
  Ffatura := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_pis(const Value: Boolean);   
begin                
  Fvl_pis := Value;   
end;                 

procedure TModelERPcomposicao.Setvl_cofins(const Value: Boolean);   
begin                
  Fvl_cofins := Value;   
end;                 

procedure TModelERPcomposicao.Setgnre_porcentagem(const Value: Boolean);   
begin                
  Fgnre_porcentagem := Value;   
end;                 

procedure TModelERPcomposicao.Setfrete_porcentagem(const Value: Boolean);   
begin                
  Ffrete_porcentagem := Value;   
end;                 

procedure TModelERPcomposicao.Setpeso_desossa(const Value: Boolean);   
begin                
  Fpeso_desossa := Value;   
end;                 

procedure TModelERPcomposicao.Setbusca(const Value: Boolean);   
begin                
  Fbusca := Value;   
end;                 

procedure TModelERPcomposicao.Setcod_di(const Value: Boolean);   
begin                
  Fcod_di := Value;   
end;                 

procedure TModelERPcomposicao.Setnumero_di(const Value: Boolean);   
begin                
  Fnumero_di := Value;   
end;                 

procedure TModelERPcomposicao.Setnum_acdraw(const Value: Boolean);   
begin                
  Fnum_acdraw := Value;   
end;                 

procedure TModelERPcomposicao.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 

procedure TModelERPcomposicao.Setcliente_estoque_terceiro(const Value: Boolean);   
begin                
  Fcliente_estoque_terceiro := Value;   
end;                 


end.
