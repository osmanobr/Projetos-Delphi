unit Model.ERP.carga;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcarga = class(TModelBase)

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
    Fmd5_total : WideString;
    Fmd5_alterado : WideString;

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
    procedure Setmd5_total(const Value: WideString);
    procedure Setmd5_alterado(const Value: WideString);

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
    property md5_total     : WideString read Fmd5_total write Setmd5_total;
    property md5_alterado     : WideString read Fmd5_alterado write Setmd5_alterado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcarga.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcarga) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcarga(Model).id;
Self.Fid_empresa         := TModelERPcarga(Model).id_empresa;
Self.Fid_grupo         := TModelERPcarga(Model).id_grupo;
Self.Fnome         := TModelERPcarga(Model).nome;
Self.Funidade         := TModelERPcarga(Model).unidade;
Self.Fpreco_venda         := TModelERPcarga(Model).preco_venda;
Self.Fpreco_atacado         := TModelERPcarga(Model).preco_atacado;
Self.Ffracionado         := TModelERPcarga(Model).fracionado;
Self.Fst         := TModelERPcarga(Model).st;
Self.Ficms         := TModelERPcarga(Model).icms;
Self.Freducao         := TModelERPcarga(Model).reducao;
Self.Fpromocao         := TModelERPcarga(Model).promocao;
Self.Fpreco_promocao         := TModelERPcarga(Model).preco_promocao;
Self.Fippt         := TModelERPcarga(Model).ippt;
Self.Fiat         := TModelERPcarga(Model).iat;
Self.Fatacado         := TModelERPcarga(Model).atacado;
Self.Fquantidade_atacado         := TModelERPcarga(Model).quantidade_atacado;
Self.Fncm         := TModelERPcarga(Model).ncm;
Self.Fcst         := TModelERPcarga(Model).cst;
Self.Fpiscofins         := TModelERPcarga(Model).piscofins;
Self.Fean         := TModelERPcarga(Model).ean;
Self.Fkit         := TModelERPcarga(Model).kit;
Self.Fbalanca_pdv         := TModelERPcarga(Model).balanca_pdv;
Self.Ftabela_pdv         := TModelERPcarga(Model).tabela_pdv;
Self.Fpreco_custo         := TModelERPcarga(Model).preco_custo;
Self.Fcodigo_fabricante         := TModelERPcarga(Model).codigo_fabricante;
Self.Fespecial         := TModelERPcarga(Model).especial;
Self.Fcfop_interno         := TModelERPcarga(Model).cfop_interno;
Self.Fcfop_externo         := TModelERPcarga(Model).cfop_externo;
Self.Ftipo         := TModelERPcarga(Model).tipo;
Self.Fean_caixa         := TModelERPcarga(Model).ean_caixa;
Self.Fean_caixa2         := TModelERPcarga(Model).ean_caixa2;
Self.Fean_caixa3         := TModelERPcarga(Model).ean_caixa3;
Self.Fembalagem_itens         := TModelERPcarga(Model).embalagem_itens;
Self.Fembalagem_itens2         := TModelERPcarga(Model).embalagem_itens2;
Self.Fembalagem_itens3         := TModelERPcarga(Model).embalagem_itens3;
Self.Fpreco_custo_nf         := TModelERPcarga(Model).preco_custo_nf;
Self.Fpreco_custo_nf2         := TModelERPcarga(Model).preco_custo_nf2;
Self.Fpreco_custo_nf3         := TModelERPcarga(Model).preco_custo_nf3;
Self.Fvalor_unitario_item_nf         := TModelERPcarga(Model).valor_unitario_item_nf;
Self.Fvalor_unitario_item_nf2         := TModelERPcarga(Model).valor_unitario_item_nf2;
Self.Fvalor_unitario_item_nf3         := TModelERPcarga(Model).valor_unitario_item_nf3;
Self.Fgenerico         := TModelERPcarga(Model).generico;
Self.Fcst_piscofins         := TModelERPcarga(Model).cst_piscofins;
Self.Fmd5_total         := TModelERPcarga(Model).md5_total;
Self.Fmd5_alterado         := TModelERPcarga(Model).md5_alterado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcarga.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcarga.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcarga.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcarga.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcarga.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPcarga.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPcarga.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPcarga.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPcarga.Setpreco_atacado(const Value: Boolean);   
begin                
  Fpreco_atacado := Value;   
end;                 

procedure TModelERPcarga.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPcarga.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPcarga.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPcarga.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPcarga.Setpromocao(const Value: Boolean);   
begin                
  Fpromocao := Value;   
end;                 

procedure TModelERPcarga.Setpreco_promocao(const Value: Boolean);   
begin                
  Fpreco_promocao := Value;   
end;                 

procedure TModelERPcarga.Setippt(const Value: Boolean);   
begin                
  Fippt := Value;   
end;                 

procedure TModelERPcarga.Setiat(const Value: Boolean);   
begin                
  Fiat := Value;   
end;                 

procedure TModelERPcarga.Setatacado(const Value: Boolean);   
begin                
  Fatacado := Value;   
end;                 

procedure TModelERPcarga.Setquantidade_atacado(const Value: Boolean);   
begin                
  Fquantidade_atacado := Value;   
end;                 

procedure TModelERPcarga.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPcarga.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPcarga.Setpiscofins(const Value: Boolean);   
begin                
  Fpiscofins := Value;   
end;                 

procedure TModelERPcarga.Setean(const Value: Boolean);   
begin                
  Fean := Value;   
end;                 

procedure TModelERPcarga.Setkit(const Value: Boolean);   
begin                
  Fkit := Value;   
end;                 

procedure TModelERPcarga.Setbalanca_pdv(const Value: Boolean);   
begin                
  Fbalanca_pdv := Value;   
end;                 

procedure TModelERPcarga.Settabela_pdv(const Value: Boolean);   
begin                
  Ftabela_pdv := Value;   
end;                 

procedure TModelERPcarga.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPcarga.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPcarga.Setespecial(const Value: Boolean);   
begin                
  Fespecial := Value;   
end;                 

procedure TModelERPcarga.Setcfop_interno(const Value: Boolean);   
begin                
  Fcfop_interno := Value;   
end;                 

procedure TModelERPcarga.Setcfop_externo(const Value: Boolean);   
begin                
  Fcfop_externo := Value;   
end;                 

procedure TModelERPcarga.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPcarga.Setean_caixa(const Value: Boolean);   
begin                
  Fean_caixa := Value;   
end;                 

procedure TModelERPcarga.Setean_caixa2(const Value: Boolean);   
begin                
  Fean_caixa2 := Value;   
end;                 

procedure TModelERPcarga.Setean_caixa3(const Value: Boolean);   
begin                
  Fean_caixa3 := Value;   
end;                 

procedure TModelERPcarga.Setembalagem_itens(const Value: Boolean);   
begin                
  Fembalagem_itens := Value;   
end;                 

procedure TModelERPcarga.Setembalagem_itens2(const Value: Boolean);   
begin                
  Fembalagem_itens2 := Value;   
end;                 

procedure TModelERPcarga.Setembalagem_itens3(const Value: Boolean);   
begin                
  Fembalagem_itens3 := Value;   
end;                 

procedure TModelERPcarga.Setpreco_custo_nf(const Value: Boolean);   
begin                
  Fpreco_custo_nf := Value;   
end;                 

procedure TModelERPcarga.Setpreco_custo_nf2(const Value: Boolean);   
begin                
  Fpreco_custo_nf2 := Value;   
end;                 

procedure TModelERPcarga.Setpreco_custo_nf3(const Value: Boolean);   
begin                
  Fpreco_custo_nf3 := Value;   
end;                 

procedure TModelERPcarga.Setvalor_unitario_item_nf(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf := Value;   
end;                 

procedure TModelERPcarga.Setvalor_unitario_item_nf2(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf2 := Value;   
end;                 

procedure TModelERPcarga.Setvalor_unitario_item_nf3(const Value: Boolean);   
begin                
  Fvalor_unitario_item_nf3 := Value;   
end;                 

procedure TModelERPcarga.Setgenerico(const Value: Boolean);   
begin                
  Fgenerico := Value;   
end;                 

procedure TModelERPcarga.Setcst_piscofins(const Value: Boolean);   
begin                
  Fcst_piscofins := Value;   
end;                 

procedure TModelERPcarga.Setmd5_total(const Value: Boolean);   
begin                
  Fmd5_total := Value;   
end;                 

procedure TModelERPcarga.Setmd5_alterado(const Value: Boolean);   
begin                
  Fmd5_alterado := Value;   
end;                 


end.
