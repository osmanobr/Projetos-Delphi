unit Model.ERP.import_kit;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportkit = class(TModelBase)

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
 function TModelERPimportkit.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportkit) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportkit(Model).id;
Self.Fid_empresa         := TModelERPimportkit(Model).id_empresa;
Self.Fid_grupo         := TModelERPimportkit(Model).id_grupo;
Self.Fnome         := TModelERPimportkit(Model).nome;
Self.Funidade         := TModelERPimportkit(Model).unidade;
Self.Fpreco_venda         := TModelERPimportkit(Model).preco_venda;
Self.Fpreco_atacado         := TModelERPimportkit(Model).preco_atacado;
Self.Ffracionado         := TModelERPimportkit(Model).fracionado;
Self.Fst         := TModelERPimportkit(Model).st;
Self.Ficms         := TModelERPimportkit(Model).icms;
Self.Freducao         := TModelERPimportkit(Model).reducao;
Self.Fpromocao         := TModelERPimportkit(Model).promocao;
Self.Fpreco_promocao         := TModelERPimportkit(Model).preco_promocao;
Self.Fippt         := TModelERPimportkit(Model).ippt;
Self.Fiat         := TModelERPimportkit(Model).iat;
Self.Fatacado         := TModelERPimportkit(Model).atacado;
Self.Fquantidade_atacado         := TModelERPimportkit(Model).quantidade_atacado;
Self.Fncm         := TModelERPimportkit(Model).ncm;
Self.Fcst         := TModelERPimportkit(Model).cst;
Self.Fpiscofins         := TModelERPimportkit(Model).piscofins;
Self.Fean         := TModelERPimportkit(Model).ean;
Self.Fkit         := TModelERPimportkit(Model).kit;
Self.Fbalanca_pdv         := TModelERPimportkit(Model).balanca_pdv;
Self.Ftabela_pdv         := TModelERPimportkit(Model).tabela_pdv;
Self.Fpreco_custo         := TModelERPimportkit(Model).preco_custo;
Self.Fcodigo_fabricante         := TModelERPimportkit(Model).codigo_fabricante;
Self.Fespecial         := TModelERPimportkit(Model).especial;
Self.Fcfop_interno         := TModelERPimportkit(Model).cfop_interno;
Self.Fcfop_externo         := TModelERPimportkit(Model).cfop_externo;
Self.Ftipo         := TModelERPimportkit(Model).tipo;
Self.Fean_caixa         := TModelERPimportkit(Model).ean_caixa;
Self.Fean_caixa2         := TModelERPimportkit(Model).ean_caixa2;
Self.Fean_caixa3         := TModelERPimportkit(Model).ean_caixa3;
Self.Fembalagem_itens         := TModelERPimportkit(Model).embalagem_itens;
Self.Fembalagem_itens2         := TModelERPimportkit(Model).embalagem_itens2;
Self.Fembalagem_itens3         := TModelERPimportkit(Model).embalagem_itens3;
Self.Fpreco_custo_nf         := TModelERPimportkit(Model).preco_custo_nf;
Self.Fpreco_custo_nf2         := TModelERPimportkit(Model).preco_custo_nf2;
Self.Fpreco_custo_nf3         := TModelERPimportkit(Model).preco_custo_nf3;
Self.Fvalor_unitario_item_nf         := TModelERPimportkit(Model).valor_unitario_item_nf;
Self.Fvalor_unitario_item_nf2         := TModelERPimportkit(Model).valor_unitario_item_nf2;
Self.Fvalor_unitario_item_nf3         := TModelERPimportkit(Model).valor_unitario_item_nf3;
Self.Fgenerico         := TModelERPimportkit(Model).generico;
Self.Fcst_piscofins         := TModelERPimportkit(Model).cst_piscofins;
Self.Fsem_gtin         := TModelERPimportkit(Model).sem_gtin;
Self.Festoque_atual         := TModelERPimportkit(Model).estoque_atual;
Self.Fvenda_metade         := TModelERPimportkit(Model).venda_metade;
Self.Fmetade_porcentagem         := TModelERPimportkit(Model).metade_porcentagem;
Self.Fcnpj         := TModelERPimportkit(Model).cnpj;
Self.Fcode         := TModelERPimportkit(Model).code;
Self.Fcst_cofins         := TModelERPimportkit(Model).cst_cofins;
Self.Fcst_pis         := TModelERPimportkit(Model).cst_pis;
Self.Fmetade_percentual         := TModelERPimportkit(Model).metade_percentual;
Self.Ftrib         := TModelERPimportkit(Model).trib;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportkit.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportkit.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportkit.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportkit.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportkit.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPimportkit.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportkit.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_atacado(const Value: Boolean);   
begin                
  Fpreco_atacado := Value;   
end;                 

procedure TModelERPimportkit.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPimportkit.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPimportkit.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPimportkit.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPimportkit.Setpromocao(const Value: Boolean);   
begin                
  Fpromocao := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_promocao(const Value: Boolean);   
begin                
  Fpreco_promocao := Value;   
end;                 

procedure TModelERPimportkit.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPimportkit.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 

procedure TModelERPimportkit.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPimportkit.Setquantidade_atacado(const Value: Boolean);   
begin                
  Fquantidade_atacado := Value;   
end;                 

procedure TModelERPimportkit.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPimportkit.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPimportkit.Setpiscofins(const Value: Boolean);   
begin                
  Fpiscofins := Value;   
end;                 

procedure TModelERPimportkit.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPimportkit.Setkit(const Value: Boolean);   
begin                
  Fkit := Value;   
end;                 

procedure TModelERPimportkit.Setbalanca_pdv(const Value: Boolean);   
begin                
  Fbalanca_pdv := Value;   
end;                 

procedure TModelERPimportkit.Settabela_pdv(const Value: Boolean);   
begin                
  Ftabela_pdv := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPimportkit.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPimportkit.Setespecial(const Value: Boolean);   
begin                
  Fespecial := Value;   
end;                 

procedure TModelERPimportkit.Setcfop_interno(const Value: Boolean);   
begin                
  Fcfop_interno := Value;   
end;                 

procedure TModelERPimportkit.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 

procedure TModelERPimportkit.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPimportkit.Setean_caixa(const Value: Boolean);   
begin                
  Fean_caixa := Value;   
end;                 

procedure TModelERPimportkit.Setean_caixa2(const Value: Boolean);   
begin                
  Fean_caixa2 := Value;   
end;                 

procedure TModelERPimportkit.Setean_caixa3(const Value: Boolean);   
begin                
  Fean_caixa3 := Value;   
end;                 

procedure TModelERPimportkit.Setembalagem_itens(const Value: Boolean);   
begin                
  Fembalagem_itens := Value;   
end;                 

procedure TModelERPimportkit.Setembalagem_itens2(const Value: Boolean);   
begin                
  Fembalagem_itens2 := Value;   
end;                 

procedure TModelERPimportkit.Setembalagem_itens3(const Value: Boolean);   
begin                
  Fembalagem_itens3 := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_custo_nf(const Value: Boolean);   
begin                
  Fpreco_custo_nf := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_custo_nf2(const Value: Boolean);   
begin                
  Fpreco_custo_nf2 := Value;   
end;                 

procedure TModelERPimportkit.Setpreco_custo_nf3(const Value: Boolean);   
begin                
  Fpreco_custo_nf3 := Value;   
end;                 

procedure TModelERPimportkit.Setvalor_unitario_item_nf(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf := Value;   
end;                 

procedure TModelERPimportkit.Setvalor_unitario_item_nf2(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf2 := Value;   
end;                 

procedure TModelERPimportkit.Setvalor_unitario_item_nf3(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf3 := Value;   
end;                 

procedure TModelERPimportkit.Setgenerico(const Value: Boolean);   
begin                
  Fgenerico := Value;   
end;                 

procedure TModelERPimportkit.Setcst_piscofins(const Value: Boolean);   
begin                
  Fcst_piscofins := Value;   
end;                 

procedure TModelERPimportkit.Setsem_gtin(const Value: Boolean);   
begin                
  Fsem_gtin := Value;   
end;                 

procedure TModelERPimportkit.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPimportkit.Setvenda_metade(const Value: Boolean);   
begin                
  Fvenda_metade := Value;   
end;                 

procedure TModelERPimportkit.Setmetade_porcentagem(const Value: Boolean);   
begin                
  Fmetade_porcentagem := Value;   
end;                 

procedure TModelERPimportkit.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPimportkit.Setcode(const Value: Boolean);   
begin                
  Fcode := Value;   
end;                 

procedure TModelERPimportkit.Setcst_cofins(const Value: Boolean);   
begin                
  Fcst_cofins := Value;   
end;                 

procedure TModelERPimportkit.Setcst_pis(const Value: Boolean);   
begin                
  Fcst_pis := Value;   
end;                 

procedure TModelERPimportkit.Setmetade_percentual(const Value: Boolean);   
begin                
  Fmetade_percentual := Value;   
end;                 

procedure TModelERPimportkit.Settrib(const Value: Boolean);   
begin                
  Ftrib := Value;   
end;                 


end.
