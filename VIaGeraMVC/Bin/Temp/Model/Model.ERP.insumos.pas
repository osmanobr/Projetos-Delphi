unit Model.ERP.indicacao_servico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPindicacaoservico = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fcodigo_fabricante : WideString;
    Funidade : WideString;
    Fvalidade : WideString;
    Ftp_peso : WideString;
    Fpeso : Double;
    Fid_fornecedor : Integer;
    Festoque_minimo : Double;
    Festoque_atual : Double;
    Fpreco_custo : Double;
    Fpreco_custosemfrete : Double;
    Fpreco_compra : Double;
    Fvl_frete : Double;
    Fperc_frete : Double;
    Fipi_entrada : Double;
    Ficms_entrada : Double;
    Fvl_substituicao : Double;
    Foutras_despesas : Double;
    Ffracionado : WideString;
    Fembalagem : WideString;
    Fitens_embalagem : Double;
    Faplicacao : indefinido;
    Fativo : WideString;
    Fclick : Boolean;
    Fid_produto : Integer;
    Fid_almoxarifado : Integer;
    Fcst : WideString;
    Fst : WideString;
    Fdt_fab : TDateTime;
    Fdt_val : TDateTime;
    Fdt_ent : indefinido;
    Fmat_p : Boolean;
    Fcondicoes : WideString;
    Ftemp_mat_p : Integer;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setcodigo_fabricante(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setvalidade(const Value: WideString);
    procedure Settp_peso(const Value: WideString);
    procedure Setpeso(const Value: Double);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setestoque_minimo(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_custosemfrete(const Value: Double);
    procedure Setpreco_compra(const Value: Double);
    procedure Setvl_frete(const Value: Double);
    procedure Setperc_frete(const Value: Double);
    procedure Setipi_entrada(const Value: Double);
    procedure Seticms_entrada(const Value: Double);
    procedure Setvl_substituicao(const Value: Double);
    procedure Setoutras_despesas(const Value: Double);
    procedure Setfracionado(const Value: WideString);
    procedure Setembalagem(const Value: WideString);
    procedure Setitens_embalagem(const Value: Double);
    procedure Setaplicacao(const Value: indefinido);
    procedure Setativo(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setid_produto(const Value: Integer);
    procedure Setid_almoxarifado(const Value: Integer);
    procedure Setcst(const Value: WideString);
    procedure Setst(const Value: WideString);
    procedure Setdt_fab(const Value: TDateTime);
    procedure Setdt_val(const Value: TDateTime);
    procedure Setdt_ent(const Value: indefinido);
    procedure Setmat_p(const Value: Boolean);
    procedure Setcondicoes(const Value: WideString);
    procedure Settemp_mat_p(const Value: Integer);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property codigo_fabricante     : WideString read Fcodigo_fabricante write Setcodigo_fabricante;
    property unidade     : WideString read Funidade write Setunidade;
    property validade     : WideString read Fvalidade write Setvalidade;
    property tp_peso     : WideString read Ftp_peso write Settp_peso;
    property peso     : Double read Fpeso write Setpeso;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property estoque_minimo     : Double read Festoque_minimo write Setestoque_minimo;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_custosemfrete     : Double read Fpreco_custosemfrete write Setpreco_custosemfrete;
    property preco_compra     : Double read Fpreco_compra write Setpreco_compra;
    property vl_frete     : Double read Fvl_frete write Setvl_frete;
    property perc_frete     : Double read Fperc_frete write Setperc_frete;
    property ipi_entrada     : Double read Fipi_entrada write Setipi_entrada;
    property icms_entrada     : Double read Ficms_entrada write Seticms_entrada;
    property vl_substituicao     : Double read Fvl_substituicao write Setvl_substituicao;
    property outras_despesas     : Double read Foutras_despesas write Setoutras_despesas;
    property fracionado     : WideString read Ffracionado write Setfracionado;
    property embalagem     : WideString read Fembalagem write Setembalagem;
    property itens_embalagem     : Double read Fitens_embalagem write Setitens_embalagem;
    property aplicacao     : indefinido read Faplicacao write Setaplicacao;
    property ativo     : WideString read Fativo write Setativo;
    property click     : Boolean read Fclick write Setclick;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property id_almoxarifado     : Integer read Fid_almoxarifado write Setid_almoxarifado;
    property cst     : WideString read Fcst write Setcst;
    property st     : WideString read Fst write Setst;
    property dt_fab     : TDateTime read Fdt_fab write Setdt_fab;
    property dt_val     : TDateTime read Fdt_val write Setdt_val;
    property dt_ent     : indefinido read Fdt_ent write Setdt_ent;
    property mat_p     : Boolean read Fmat_p write Setmat_p;
    property condicoes     : WideString read Fcondicoes write Setcondicoes;
    property temp_mat_p     : Integer read Ftemp_mat_p write Settemp_mat_p;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPindicacaoservico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPindicacaoservico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPindicacaoservico(Model).id;
Self.Fnome         := TModelERPindicacaoservico(Model).nome;
Self.Fcodigo_fabricante         := TModelERPindicacaoservico(Model).codigo_fabricante;
Self.Funidade         := TModelERPindicacaoservico(Model).unidade;
Self.Fvalidade         := TModelERPindicacaoservico(Model).validade;
Self.Ftp_peso         := TModelERPindicacaoservico(Model).tp_peso;
Self.Fpeso         := TModelERPindicacaoservico(Model).peso;
Self.Fid_fornecedor         := TModelERPindicacaoservico(Model).id_fornecedor;
Self.Festoque_minimo         := TModelERPindicacaoservico(Model).estoque_minimo;
Self.Festoque_atual         := TModelERPindicacaoservico(Model).estoque_atual;
Self.Fpreco_custo         := TModelERPindicacaoservico(Model).preco_custo;
Self.Fpreco_custosemfrete         := TModelERPindicacaoservico(Model).preco_custosemfrete;
Self.Fpreco_compra         := TModelERPindicacaoservico(Model).preco_compra;
Self.Fvl_frete         := TModelERPindicacaoservico(Model).vl_frete;
Self.Fperc_frete         := TModelERPindicacaoservico(Model).perc_frete;
Self.Fipi_entrada         := TModelERPindicacaoservico(Model).ipi_entrada;
Self.Ficms_entrada         := TModelERPindicacaoservico(Model).icms_entrada;
Self.Fvl_substituicao         := TModelERPindicacaoservico(Model).vl_substituicao;
Self.Foutras_despesas         := TModelERPindicacaoservico(Model).outras_despesas;
Self.Ffracionado         := TModelERPindicacaoservico(Model).fracionado;
Self.Fembalagem         := TModelERPindicacaoservico(Model).embalagem;
Self.Fitens_embalagem         := TModelERPindicacaoservico(Model).itens_embalagem;
Self.Faplicacao         := TModelERPindicacaoservico(Model).aplicacao;
Self.Fativo         := TModelERPindicacaoservico(Model).ativo;
Self.Fclick         := TModelERPindicacaoservico(Model).click;
Self.Fid_produto         := TModelERPindicacaoservico(Model).id_produto;
Self.Fid_almoxarifado         := TModelERPindicacaoservico(Model).id_almoxarifado;
Self.Fcst         := TModelERPindicacaoservico(Model).cst;
Self.Fst         := TModelERPindicacaoservico(Model).st;
Self.Fdt_fab         := TModelERPindicacaoservico(Model).dt_fab;
Self.Fdt_val         := TModelERPindicacaoservico(Model).dt_val;
Self.Fdt_ent         := TModelERPindicacaoservico(Model).dt_ent;
Self.Fmat_p         := TModelERPindicacaoservico(Model).mat_p;
Self.Fcondicoes         := TModelERPindicacaoservico(Model).condicoes;
Self.Ftemp_mat_p         := TModelERPindicacaoservico(Model).temp_mat_p;
Self.Fquantidade_empresa_terceiro         := TModelERPindicacaoservico(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPindicacaoservico(Model).quantidade_terceiro_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPindicacaoservico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPindicacaoservico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPindicacaoservico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPindicacaoservico.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPindicacaoservico.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPindicacaoservico.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPindicacaoservico.Setvalidade(const Value: Boolean);   
begin                
  Fvalidade := Value;   
end;                 

procedure TModelERPindicacaoservico.Settp_peso(const Value: Boolean);   
begin                
  Ftp_peso := Value;   
end;                 

procedure TModelERPindicacaoservico.Setpeso(const Value: Boolean);   
begin                
  Fpeso := Value;   
end;                 

procedure TModelERPindicacaoservico.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPindicacaoservico.Setestoque_minimo(const Value: Boolean);   
begin                
  Festoque_minimo := Value;   
end;                 

procedure TModelERPindicacaoservico.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPindicacaoservico.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPindicacaoservico.Setpreco_custosemfrete(const Value: Boolean);   
begin                
  Fpreco_custosemfrete := Value;   
end;                 

procedure TModelERPindicacaoservico.Setpreco_compra(const Value: Boolean);   
begin                
  Fpreco_compra := Value;   
end;                 

procedure TModelERPindicacaoservico.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPindicacaoservico.Setperc_frete(const Value: Boolean);   
begin                
  Fperc_frete := Value;   
end;                 

procedure TModelERPindicacaoservico.Setipi_entrada(const Value: Boolean);   
begin                
  Fipi_entrada := Value;   
end;                 

procedure TModelERPindicacaoservico.Seticms_entrada(const Value: Boolean);   
begin                
  Ficms_entrada := Value;   
end;                 

procedure TModelERPindicacaoservico.Setvl_substituicao(const Value: Boolean);   
begin                
  Fvl_substituicao := Value;   
end;                 

procedure TModelERPindicacaoservico.Setoutras_despesas(const Value: Boolean);   
begin                
  Foutras_despesas := Value;   
end;                 

procedure TModelERPindicacaoservico.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPindicacaoservico.Setembalagem(const Value: Boolean);   
begin                
  Fembalagem := Value;   
end;                 

procedure TModelERPindicacaoservico.Setitens_embalagem(const Value: Boolean);   
begin                
  Fitens_embalagem := Value;   
end;                 

procedure TModelERPindicacaoservico.Setaplicacao(const Value: Boolean);   
begin                
  Faplicacao := Value;   
end;                 

procedure TModelERPindicacaoservico.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPindicacaoservico.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPindicacaoservico.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPindicacaoservico.Setid_almoxarifado(const Value: Boolean);   
begin                
  Fid_almoxarifado := Value;   
end;                 

procedure TModelERPindicacaoservico.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPindicacaoservico.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPindicacaoservico.Setdt_fab(const Value: Boolean);   
begin                
  Fdt_fab := Value;   
end;                 

procedure TModelERPindicacaoservico.Setdt_val(const Value: Boolean);   
begin                
  Fdt_val := Value;   
end;                 

procedure TModelERPindicacaoservico.Setdt_ent(const Value: Boolean);   
begin                
  Fdt_ent := Value;   
end;                 

procedure TModelERPindicacaoservico.Setmat_p(const Value: Boolean);   
begin                
  Fmat_p := Value;   
end;                 

procedure TModelERPindicacaoservico.Setcondicoes(const Value: Boolean);   
begin                
  Fcondicoes := Value;   
end;                 

procedure TModelERPindicacaoservico.Settemp_mat_p(const Value: Boolean);   
begin                
  Ftemp_mat_p := Value;   
end;                 

procedure TModelERPindicacaoservico.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPindicacaoservico.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 


end.
