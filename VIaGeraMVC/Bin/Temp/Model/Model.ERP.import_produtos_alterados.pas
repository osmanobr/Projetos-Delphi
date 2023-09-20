unit Model.ERP.import_produtos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportprodutos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_grupo : Integer;
    Fnome : WideString;
    Funidade : WideString;
    Fpreco_venda : Double;
    Fpreco_atacado : Double;
    Ffracionado : Boolean;
    Fst : WideString;
    Ficms : Double;
    Freducao : Double;
    Fpromocao : Boolean;
    Fpreco_promocao : Double;
    Fippt : WideString;
    Fiat : WideString;
    Fatacado : Boolean;
    Fquantidade_atacado : Double;
    Fncm : WideString;
    Fcst : WideString;
    Fpiscofins : WideString;
    Fean : WideString;
    Fkit : Boolean;
    Fbalanca_pdv : Boolean;
    Ftabela_pdv : Boolean;
    Fpreco_custo : Double;
    Fcodigo_fabricante : WideString;
    Fespecial : WideString;
    Fcfop_interno : Integer;
    Fcfop_externo : Integer;
    Ftipo : WideString;
    Fean_caixa : WideString;
    Fean_caixa2 : WideString;
    Fean_caixa3 : WideString;
    Fembalagem_itens : Double;
    Fembalagem_itens2 : Double;
    Fembalagem_itens3 : Double;
    Fpreco_custo_nf : Double;
    Fpreco_custo_nf2 : Double;
    Fpreco_custo_nf3 : Double;
    Fvalor_unitario_item_nf : Double;
    Fvalor_unitario_item_nf2 : Double;
    Fvalor_unitario_item_nf3 : Double;
    Fgenerico : Boolean;
    Fcst_piscofins : WideString;
    Fsem_gtin : Boolean;
    Festoque_atual : Double;
    Fvenda_metade : Boolean;
    Fmetade_porcentagem : Double;
    Fcnpj : WideString;
    Fcode : WideString;
    Fcst_cofins : WideString;
    Fcst_pis : WideString;
    Fmetade_percentual : Double;
    Ftrib : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_grupo(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_atacado(const Value: Double);
    procedure Setfracionado(const Value: Boolean);
    procedure Setst(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setpromocao(const Value: Boolean);
    procedure Setpreco_promocao(const Value: Double);
    procedure Setippt(const Value: WideString);
    procedure Setiat(const Value: WideString);
    procedure Setatacado(const Value: Boolean);
    procedure Setquantidade_atacado(const Value: Double);
    procedure Setncm(const Value: WideString);
    procedure Setcst(const Value: WideString);
    procedure Setpiscofins(const Value: WideString);
    procedure Setean(const Value: WideString);
    procedure Setkit(const Value: Boolean);
    procedure Setbalanca_pdv(const Value: Boolean);
    procedure Settabela_pdv(const Value: Boolean);
    procedure Setpreco_custo(const Value: Double);
    procedure Setcodigo_fabricante(const Value: WideString);
    procedure Setespecial(const Value: WideString);
    procedure Setcfop_interno(const Value: Integer);
    procedure Setcfop_externo(const Value: Integer);
    procedure Settipo(const Value: WideString);
    procedure Setean_caixa(const Value: WideString);
    procedure Setean_caixa2(const Value: WideString);
    procedure Setean_caixa3(const Value: WideString);
    procedure Setembalagem_itens(const Value: Double);
    procedure Setembalagem_itens2(const Value: Double);
    procedure Setembalagem_itens3(const Value: Double);
    procedure Setpreco_custo_nf(const Value: Double);
    procedure Setpreco_custo_nf2(const Value: Double);
    procedure Setpreco_custo_nf3(const Value: Double);
    procedure Setvalor_unitario_item_nf(const Value: Double);
    procedure Setvalor_unitario_item_nf2(const Value: Double);
    procedure Setvalor_unitario_item_nf3(const Value: Double);
    procedure Setgenerico(const Value: Boolean);
    procedure Setcst_piscofins(const Value: WideString);
    procedure Setsem_gtin(const Value: Boolean);
    procedure Setestoque_atual(const Value: Double);
    procedure Setvenda_metade(const Value: Boolean);
    procedure Setmetade_porcentagem(const Value: Double);
    procedure Setcnpj(const Value: WideString);
    procedure Setcode(const Value: WideString);
    procedure Setcst_cofins(const Value: WideString);
    procedure Setcst_pis(const Value: WideString);
    procedure Setmetade_percentual(const Value: Double);
    procedure Settrib(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property nome     : WideString read Fnome write Setnome;
    property unidade     : WideString read Funidade write Setunidade;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_atacado     : Double read Fpreco_atacado write Setpreco_atacado;
    property fracionado     : Boolean read Ffracionado write Setfracionado;
    property st     : WideString read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property reducao     : Double read Freducao write Setreducao;
    property promocao     : Boolean read Fpromocao write Setpromocao;
    property preco_promocao     : Double read Fpreco_promocao write Setpreco_promocao;
    property ippt     : WideString read Fippt write Setippt;
    property iat     : WideString read Fiat write Setiat;
    property atacado     : Boolean read Fatacado write Setatacado;
    property quantidade_atacado     : Double read Fquantidade_atacado write Setquantidade_atacado;
    property ncm     : WideString read Fncm write Setncm;
    property cst     : WideString read Fcst write Setcst;
    property piscofins     : WideString read Fpiscofins write Setpiscofins;
    property ean     : WideString read Fean write Setean;
    property kit     : Boolean read Fkit write Setkit;
    property balanca_pdv     : Boolean read Fbalanca_pdv write Setbalanca_pdv;
    property tabela_pdv     : Boolean read Ftabela_pdv write Settabela_pdv;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property codigo_fabricante     : WideString read Fcodigo_fabricante write Setcodigo_fabricante;
    property especial     : WideString read Fespecial write Setespecial;
    property cfop_interno     : Integer read Fcfop_interno write Setcfop_interno;
    property cfop_externo     : Integer read Fcfop_externo write Setcfop_externo;
    property tipo     : WideString read Ftipo write Settipo;
    property ean_caixa     : WideString read Fean_caixa write Setean_caixa;
    property ean_caixa2     : WideString read Fean_caixa2 write Setean_caixa2;
    property ean_caixa3     : WideString read Fean_caixa3 write Setean_caixa3;
    property embalagem_itens     : Double read Fembalagem_itens write Setembalagem_itens;
    property embalagem_itens2     : Double read Fembalagem_itens2 write Setembalagem_itens2;
    property embalagem_itens3     : Double read Fembalagem_itens3 write Setembalagem_itens3;
    property preco_custo_nf     : Double read Fpreco_custo_nf write Setpreco_custo_nf;
    property preco_custo_nf2     : Double read Fpreco_custo_nf2 write Setpreco_custo_nf2;
    property preco_custo_nf3     : Double read Fpreco_custo_nf3 write Setpreco_custo_nf3;
    property valor_unitario_item_nf     : Double read Fvalor_unitario_item_nf write Setvalor_unitario_item_nf;
    property valor_unitario_item_nf2     : Double read Fvalor_unitario_item_nf2 write Setvalor_unitario_item_nf2;
    property valor_unitario_item_nf3     : Double read Fvalor_unitario_item_nf3 write Setvalor_unitario_item_nf3;
    property generico     : Boolean read Fgenerico write Setgenerico;
    property cst_piscofins     : WideString read Fcst_piscofins write Setcst_piscofins;
    property sem_gtin     : Boolean read Fsem_gtin write Setsem_gtin;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property venda_metade     : Boolean read Fvenda_metade write Setvenda_metade;
    property metade_porcentagem     : Double read Fmetade_porcentagem write Setmetade_porcentagem;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property code     : WideString read Fcode write Setcode;
    property cst_cofins     : WideString read Fcst_cofins write Setcst_cofins;
    property cst_pis     : WideString read Fcst_pis write Setcst_pis;
    property metade_percentual     : Double read Fmetade_percentual write Setmetade_percentual;
    property trib     : WideString read Ftrib write Settrib;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportprodutos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportprodutos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportprodutos(Model).id;
Self.Fid_empresa         := TModelERPimportprodutos(Model).id_empresa;
Self.Fid_grupo         := TModelERPimportprodutos(Model).id_grupo;
Self.Fnome         := TModelERPimportprodutos(Model).nome;
Self.Funidade         := TModelERPimportprodutos(Model).unidade;
Self.Fpreco_venda         := TModelERPimportprodutos(Model).preco_venda;
Self.Fpreco_atacado         := TModelERPimportprodutos(Model).preco_atacado;
Self.Ffracionado         := TModelERPimportprodutos(Model).fracionado;
Self.Fst         := TModelERPimportprodutos(Model).st;
Self.Ficms         := TModelERPimportprodutos(Model).icms;
Self.Freducao         := TModelERPimportprodutos(Model).reducao;
Self.Fpromocao         := TModelERPimportprodutos(Model).promocao;
Self.Fpreco_promocao         := TModelERPimportprodutos(Model).preco_promocao;
Self.Fippt         := TModelERPimportprodutos(Model).ippt;
Self.Fiat         := TModelERPimportprodutos(Model).iat;
Self.Fatacado         := TModelERPimportprodutos(Model).atacado;
Self.Fquantidade_atacado         := TModelERPimportprodutos(Model).quantidade_atacado;
Self.Fncm         := TModelERPimportprodutos(Model).ncm;
Self.Fcst         := TModelERPimportprodutos(Model).cst;
Self.Fpiscofins         := TModelERPimportprodutos(Model).piscofins;
Self.Fean         := TModelERPimportprodutos(Model).ean;
Self.Fkit         := TModelERPimportprodutos(Model).kit;
Self.Fbalanca_pdv         := TModelERPimportprodutos(Model).balanca_pdv;
Self.Ftabela_pdv         := TModelERPimportprodutos(Model).tabela_pdv;
Self.Fpreco_custo         := TModelERPimportprodutos(Model).preco_custo;
Self.Fcodigo_fabricante         := TModelERPimportprodutos(Model).codigo_fabricante;
Self.Fespecial         := TModelERPimportprodutos(Model).especial;
Self.Fcfop_interno         := TModelERPimportprodutos(Model).cfop_interno;
Self.Fcfop_externo         := TModelERPimportprodutos(Model).cfop_externo;
Self.Ftipo         := TModelERPimportprodutos(Model).tipo;
Self.Fean_caixa         := TModelERPimportprodutos(Model).ean_caixa;
Self.Fean_caixa2         := TModelERPimportprodutos(Model).ean_caixa2;
Self.Fean_caixa3         := TModelERPimportprodutos(Model).ean_caixa3;
Self.Fembalagem_itens         := TModelERPimportprodutos(Model).embalagem_itens;
Self.Fembalagem_itens2         := TModelERPimportprodutos(Model).embalagem_itens2;
Self.Fembalagem_itens3         := TModelERPimportprodutos(Model).embalagem_itens3;
Self.Fpreco_custo_nf         := TModelERPimportprodutos(Model).preco_custo_nf;
Self.Fpreco_custo_nf2         := TModelERPimportprodutos(Model).preco_custo_nf2;
Self.Fpreco_custo_nf3         := TModelERPimportprodutos(Model).preco_custo_nf3;
Self.Fvalor_unitario_item_nf         := TModelERPimportprodutos(Model).valor_unitario_item_nf;
Self.Fvalor_unitario_item_nf2         := TModelERPimportprodutos(Model).valor_unitario_item_nf2;
Self.Fvalor_unitario_item_nf3         := TModelERPimportprodutos(Model).valor_unitario_item_nf3;
Self.Fgenerico         := TModelERPimportprodutos(Model).generico;
Self.Fcst_piscofins         := TModelERPimportprodutos(Model).cst_piscofins;
Self.Fsem_gtin         := TModelERPimportprodutos(Model).sem_gtin;
Self.Festoque_atual         := TModelERPimportprodutos(Model).estoque_atual;
Self.Fvenda_metade         := TModelERPimportprodutos(Model).venda_metade;
Self.Fmetade_porcentagem         := TModelERPimportprodutos(Model).metade_porcentagem;
Self.Fcnpj         := TModelERPimportprodutos(Model).cnpj;
Self.Fcode         := TModelERPimportprodutos(Model).code;
Self.Fcst_cofins         := TModelERPimportprodutos(Model).cst_cofins;
Self.Fcst_pis         := TModelERPimportprodutos(Model).cst_pis;
Self.Fmetade_percentual         := TModelERPimportprodutos(Model).metade_percentual;
Self.Ftrib         := TModelERPimportprodutos(Model).trib;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportprodutos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportprodutos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportprodutos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportprodutos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportprodutos.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPimportprodutos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportprodutos.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_atacado(const Value: Boolean);   
begin                
  Fpreco_atacado := Value;   
end;                 

procedure TModelERPimportprodutos.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPimportprodutos.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPimportprodutos.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPimportprodutos.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPimportprodutos.Setpromocao(const Value: Boolean);   
begin                
  Fpromocao := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_promocao(const Value: Boolean);   
begin                
  Fpreco_promocao := Value;   
end;                 

procedure TModelERPimportprodutos.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPimportprodutos.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 

procedure TModelERPimportprodutos.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPimportprodutos.Setquantidade_atacado(const Value: Boolean);   
begin                
  Fquantidade_atacado := Value;   
end;                 

procedure TModelERPimportprodutos.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPimportprodutos.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPimportprodutos.Setpiscofins(const Value: Boolean);   
begin                
  Fpiscofins := Value;   
end;                 

procedure TModelERPimportprodutos.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPimportprodutos.Setkit(const Value: Boolean);   
begin                
  Fkit := Value;   
end;                 

procedure TModelERPimportprodutos.Setbalanca_pdv(const Value: Boolean);   
begin                
  Fbalanca_pdv := Value;   
end;                 

procedure TModelERPimportprodutos.Settabela_pdv(const Value: Boolean);   
begin                
  Ftabela_pdv := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPimportprodutos.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPimportprodutos.Setespecial(const Value: Boolean);   
begin                
  Fespecial := Value;   
end;                 

procedure TModelERPimportprodutos.Setcfop_interno(const Value: Boolean);   
begin                
  Fcfop_interno := Value;   
end;                 

procedure TModelERPimportprodutos.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 

procedure TModelERPimportprodutos.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPimportprodutos.Setean_caixa(const Value: Boolean);   
begin                
  Fean_caixa := Value;   
end;                 

procedure TModelERPimportprodutos.Setean_caixa2(const Value: Boolean);   
begin                
  Fean_caixa2 := Value;   
end;                 

procedure TModelERPimportprodutos.Setean_caixa3(const Value: Boolean);   
begin                
  Fean_caixa3 := Value;   
end;                 

procedure TModelERPimportprodutos.Setembalagem_itens(const Value: Boolean);   
begin                
  Fembalagem_itens := Value;   
end;                 

procedure TModelERPimportprodutos.Setembalagem_itens2(const Value: Boolean);   
begin                
  Fembalagem_itens2 := Value;   
end;                 

procedure TModelERPimportprodutos.Setembalagem_itens3(const Value: Boolean);   
begin                
  Fembalagem_itens3 := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_custo_nf(const Value: Boolean);   
begin                
  Fpreco_custo_nf := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_custo_nf2(const Value: Boolean);   
begin                
  Fpreco_custo_nf2 := Value;   
end;                 

procedure TModelERPimportprodutos.Setpreco_custo_nf3(const Value: Boolean);   
begin                
  Fpreco_custo_nf3 := Value;   
end;                 

procedure TModelERPimportprodutos.Setvalor_unitario_item_nf(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf := Value;   
end;                 

procedure TModelERPimportprodutos.Setvalor_unitario_item_nf2(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf2 := Value;   
end;                 

procedure TModelERPimportprodutos.Setvalor_unitario_item_nf3(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf3 := Value;   
end;                 

procedure TModelERPimportprodutos.Setgenerico(const Value: Boolean);   
begin                
  Fgenerico := Value;   
end;                 

procedure TModelERPimportprodutos.Setcst_piscofins(const Value: Boolean);   
begin                
  Fcst_piscofins := Value;   
end;                 

procedure TModelERPimportprodutos.Setsem_gtin(const Value: Boolean);   
begin                
  Fsem_gtin := Value;   
end;                 

procedure TModelERPimportprodutos.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPimportprodutos.Setvenda_metade(const Value: Boolean);   
begin                
  Fvenda_metade := Value;   
end;                 

procedure TModelERPimportprodutos.Setmetade_porcentagem(const Value: Boolean);   
begin                
  Fmetade_porcentagem := Value;   
end;                 

procedure TModelERPimportprodutos.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPimportprodutos.Setcode(const Value: Boolean);   
begin                
  Fcode := Value;   
end;                 

procedure TModelERPimportprodutos.Setcst_cofins(const Value: Boolean);   
begin                
  Fcst_cofins := Value;   
end;                 

procedure TModelERPimportprodutos.Setcst_pis(const Value: Boolean);   
begin                
  Fcst_pis := Value;   
end;                 

procedure TModelERPimportprodutos.Setmetade_percentual(const Value: Boolean);   
begin                
  Fmetade_percentual := Value;   
end;                 

procedure TModelERPimportprodutos.Settrib(const Value: Boolean);   
begin                
  Ftrib := Value;   
end;                 


end.
