unit Model.ERP.financeira;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfinanceira = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fpreco_compra : Double;
    Fvalor_frete : Double;
    Ffrete_percentual : Double;
    Fipi_entrada_percentual : Double;
    Fvalor_ipi : Double;
    Fcredito_icms : Double;
    Fcredito_percentual : Double;
    Fcusto_financeiro : Double;
    Fcusto_financeiro_percentual : Double;
    Foutras_despesas : Double;
    Foutras_despesas_percentual : Double;
    Fsubstituicao : Double;
    Fsubstituicao_percentual : Double;
    Ficms_saida : Double;
    Ficms_saida_percentual : Double;
    Ficms_saida_atacado : Double;
    Ficms_saida_atac_percentual : Double;
    Fipi : Double;
    Fipi_percentual : Double;
    Fcofins : Double;
    Fcofins_percentual : Double;
    Fpis : Double;
    Fpis_percentual : Double;
    Firpj : Double;
    Firpj_percentual : Double;
    Fcont_social : Double;
    Fcont_social_percentual : Double;
    Foutros_encargos : Double;
    Foutros_encargos_percentual : Double;
    Fencargos_fedarais : Double;
    Fencargos_federais_percentual : Double;
    Fsimples_nacional : Double;
    Fsimples_nacional_percentual : Double;
    Fcusto_operacional : Double;
    Fcusto_operacional_percentual : Double;
    Fcomissao_venda : Double;
    Fcomissao_venda_percentual : Double;
    Fcomissao_servico : Double;
    Fcomissao_servico_percentual : Double;
    Fmargem_lucro : Double;
    Fmargem_lucro_percentual : Double;
    Fmargem_lucro_atacado : Double;
    Fmargem_lucro_atacado_percentual : Double;
    Fsugestao_venda : Double;
    Fsugestao_venda_atacado : Double;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fid_compra : Integer;
    Fmargem_lucro_varejo : Double;
    Fpreco_venda_atual_varejo : Double;
    Fpreco_venda_atual_atacado : Double;
    Fmargem_lucro_atacado2 : Double;
    Fvl_pmz : Double;
    Fpreco_custo : Double;
    Fpreco_custo_atacado : Double;
    Fdata_inicial : TDateTime;
    Fdata_final : TDateTime;
    Fquantidade : Double;
    Fmedia_venda : Double;
    Ftotal : Double;
    Fxpmz : Double;
    Finadimplencia : Double;
    Fid_grupo : Integer;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setpreco_compra(const Value: Double);
    procedure Setvalor_frete(const Value: Double);
    procedure Setfrete_percentual(const Value: Double);
    procedure Setipi_entrada_percentual(const Value: Double);
    procedure Setvalor_ipi(const Value: Double);
    procedure Setcredito_icms(const Value: Double);
    procedure Setcredito_percentual(const Value: Double);
    procedure Setcusto_financeiro(const Value: Double);
    procedure Setcusto_financeiro_percentual(const Value: Double);
    procedure Setoutras_despesas(const Value: Double);
    procedure Setoutras_despesas_percentual(const Value: Double);
    procedure Setsubstituicao(const Value: Double);
    procedure Setsubstituicao_percentual(const Value: Double);
    procedure Seticms_saida(const Value: Double);
    procedure Seticms_saida_percentual(const Value: Double);
    procedure Seticms_saida_atacado(const Value: Double);
    procedure Seticms_saida_atac_percentual(const Value: Double);
    procedure Setipi(const Value: Double);
    procedure Setipi_percentual(const Value: Double);
    procedure Setcofins(const Value: Double);
    procedure Setcofins_percentual(const Value: Double);
    procedure Setpis(const Value: Double);
    procedure Setpis_percentual(const Value: Double);
    procedure Setirpj(const Value: Double);
    procedure Setirpj_percentual(const Value: Double);
    procedure Setcont_social(const Value: Double);
    procedure Setcont_social_percentual(const Value: Double);
    procedure Setoutros_encargos(const Value: Double);
    procedure Setoutros_encargos_percentual(const Value: Double);
    procedure Setencargos_fedarais(const Value: Double);
    procedure Setencargos_federais_percentual(const Value: Double);
    procedure Setsimples_nacional(const Value: Double);
    procedure Setsimples_nacional_percentual(const Value: Double);
    procedure Setcusto_operacional(const Value: Double);
    procedure Setcusto_operacional_percentual(const Value: Double);
    procedure Setcomissao_venda(const Value: Double);
    procedure Setcomissao_venda_percentual(const Value: Double);
    procedure Setcomissao_servico(const Value: Double);
    procedure Setcomissao_servico_percentual(const Value: Double);
    procedure Setmargem_lucro(const Value: Double);
    procedure Setmargem_lucro_percentual(const Value: Double);
    procedure Setmargem_lucro_atacado(const Value: Double);
    procedure Setmargem_lucro_atacado_percentual(const Value: Double);
    procedure Setsugestao_venda(const Value: Double);
    procedure Setsugestao_venda_atacado(const Value: Double);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setid_compra(const Value: Integer);
    procedure Setmargem_lucro_varejo(const Value: Double);
    procedure Setpreco_venda_atual_varejo(const Value: Double);
    procedure Setpreco_venda_atual_atacado(const Value: Double);
    procedure Setmargem_lucro_atacado2(const Value: Double);
    procedure Setvl_pmz(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_custo_atacado(const Value: Double);
    procedure Setdata_inicial(const Value: TDateTime);
    procedure Setdata_final(const Value: TDateTime);
    procedure Setquantidade(const Value: Double);
    procedure Setmedia_venda(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setxpmz(const Value: Double);
    procedure Setinadimplencia(const Value: Double);
    procedure Setid_grupo(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property preco_compra     : Double read Fpreco_compra write Setpreco_compra;
    property valor_frete     : Double read Fvalor_frete write Setvalor_frete;
    property frete_percentual     : Double read Ffrete_percentual write Setfrete_percentual;
    property ipi_entrada_percentual     : Double read Fipi_entrada_percentual write Setipi_entrada_percentual;
    property valor_ipi     : Double read Fvalor_ipi write Setvalor_ipi;
    property credito_icms     : Double read Fcredito_icms write Setcredito_icms;
    property credito_percentual     : Double read Fcredito_percentual write Setcredito_percentual;
    property custo_financeiro     : Double read Fcusto_financeiro write Setcusto_financeiro;
    property custo_financeiro_percentual     : Double read Fcusto_financeiro_percentual write Setcusto_financeiro_percentual;
    property outras_despesas     : Double read Foutras_despesas write Setoutras_despesas;
    property outras_despesas_percentual     : Double read Foutras_despesas_percentual write Setoutras_despesas_percentual;
    property substituicao     : Double read Fsubstituicao write Setsubstituicao;
    property substituicao_percentual     : Double read Fsubstituicao_percentual write Setsubstituicao_percentual;
    property icms_saida     : Double read Ficms_saida write Seticms_saida;
    property icms_saida_percentual     : Double read Ficms_saida_percentual write Seticms_saida_percentual;
    property icms_saida_atacado     : Double read Ficms_saida_atacado write Seticms_saida_atacado;
    property icms_saida_atac_percentual     : Double read Ficms_saida_atac_percentual write Seticms_saida_atac_percentual;
    property ipi     : Double read Fipi write Setipi;
    property ipi_percentual     : Double read Fipi_percentual write Setipi_percentual;
    property cofins     : Double read Fcofins write Setcofins;
    property cofins_percentual     : Double read Fcofins_percentual write Setcofins_percentual;
    property pis     : Double read Fpis write Setpis;
    property pis_percentual     : Double read Fpis_percentual write Setpis_percentual;
    property irpj     : Double read Firpj write Setirpj;
    property irpj_percentual     : Double read Firpj_percentual write Setirpj_percentual;
    property cont_social     : Double read Fcont_social write Setcont_social;
    property cont_social_percentual     : Double read Fcont_social_percentual write Setcont_social_percentual;
    property outros_encargos     : Double read Foutros_encargos write Setoutros_encargos;
    property outros_encargos_percentual     : Double read Foutros_encargos_percentual write Setoutros_encargos_percentual;
    property encargos_fedarais     : Double read Fencargos_fedarais write Setencargos_fedarais;
    property encargos_federais_percentual     : Double read Fencargos_federais_percentual write Setencargos_federais_percentual;
    property simples_nacional     : Double read Fsimples_nacional write Setsimples_nacional;
    property simples_nacional_percentual     : Double read Fsimples_nacional_percentual write Setsimples_nacional_percentual;
    property custo_operacional     : Double read Fcusto_operacional write Setcusto_operacional;
    property custo_operacional_percentual     : Double read Fcusto_operacional_percentual write Setcusto_operacional_percentual;
    property comissao_venda     : Double read Fcomissao_venda write Setcomissao_venda;
    property comissao_venda_percentual     : Double read Fcomissao_venda_percentual write Setcomissao_venda_percentual;
    property comissao_servico     : Double read Fcomissao_servico write Setcomissao_servico;
    property comissao_servico_percentual     : Double read Fcomissao_servico_percentual write Setcomissao_servico_percentual;
    property margem_lucro     : Double read Fmargem_lucro write Setmargem_lucro;
    property margem_lucro_percentual     : Double read Fmargem_lucro_percentual write Setmargem_lucro_percentual;
    property margem_lucro_atacado     : Double read Fmargem_lucro_atacado write Setmargem_lucro_atacado;
    property margem_lucro_atacado_percentual     : Double read Fmargem_lucro_atacado_percentual write Setmargem_lucro_atacado_percentual;
    property sugestao_venda     : Double read Fsugestao_venda write Setsugestao_venda;
    property sugestao_venda_atacado     : Double read Fsugestao_venda_atacado write Setsugestao_venda_atacado;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property margem_lucro_varejo     : Double read Fmargem_lucro_varejo write Setmargem_lucro_varejo;
    property preco_venda_atual_varejo     : Double read Fpreco_venda_atual_varejo write Setpreco_venda_atual_varejo;
    property preco_venda_atual_atacado     : Double read Fpreco_venda_atual_atacado write Setpreco_venda_atual_atacado;
    property margem_lucro_atacado2     : Double read Fmargem_lucro_atacado2 write Setmargem_lucro_atacado2;
    property vl_pmz     : Double read Fvl_pmz write Setvl_pmz;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_custo_atacado     : Double read Fpreco_custo_atacado write Setpreco_custo_atacado;
    property data_inicial     : TDateTime read Fdata_inicial write Setdata_inicial;
    property data_final     : TDateTime read Fdata_final write Setdata_final;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property media_venda     : Double read Fmedia_venda write Setmedia_venda;
    property total     : Double read Ftotal write Settotal;
    property xpmz     : Double read Fxpmz write Setxpmz;
    property inadimplencia     : Double read Finadimplencia write Setinadimplencia;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfinanceira.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfinanceira) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfinanceira(Model).id;
Self.Fdata         := TModelERPfinanceira(Model).data;
Self.Fpreco_compra         := TModelERPfinanceira(Model).preco_compra;
Self.Fvalor_frete         := TModelERPfinanceira(Model).valor_frete;
Self.Ffrete_percentual         := TModelERPfinanceira(Model).frete_percentual;
Self.Fipi_entrada_percentual         := TModelERPfinanceira(Model).ipi_entrada_percentual;
Self.Fvalor_ipi         := TModelERPfinanceira(Model).valor_ipi;
Self.Fcredito_icms         := TModelERPfinanceira(Model).credito_icms;
Self.Fcredito_percentual         := TModelERPfinanceira(Model).credito_percentual;
Self.Fcusto_financeiro         := TModelERPfinanceira(Model).custo_financeiro;
Self.Fcusto_financeiro_percentual         := TModelERPfinanceira(Model).custo_financeiro_percentual;
Self.Foutras_despesas         := TModelERPfinanceira(Model).outras_despesas;
Self.Foutras_despesas_percentual         := TModelERPfinanceira(Model).outras_despesas_percentual;
Self.Fsubstituicao         := TModelERPfinanceira(Model).substituicao;
Self.Fsubstituicao_percentual         := TModelERPfinanceira(Model).substituicao_percentual;
Self.Ficms_saida         := TModelERPfinanceira(Model).icms_saida;
Self.Ficms_saida_percentual         := TModelERPfinanceira(Model).icms_saida_percentual;
Self.Ficms_saida_atacado         := TModelERPfinanceira(Model).icms_saida_atacado;
Self.Ficms_saida_atac_percentual         := TModelERPfinanceira(Model).icms_saida_atac_percentual;
Self.Fipi         := TModelERPfinanceira(Model).ipi;
Self.Fipi_percentual         := TModelERPfinanceira(Model).ipi_percentual;
Self.Fcofins         := TModelERPfinanceira(Model).cofins;
Self.Fcofins_percentual         := TModelERPfinanceira(Model).cofins_percentual;
Self.Fpis         := TModelERPfinanceira(Model).pis;
Self.Fpis_percentual         := TModelERPfinanceira(Model).pis_percentual;
Self.Firpj         := TModelERPfinanceira(Model).irpj;
Self.Firpj_percentual         := TModelERPfinanceira(Model).irpj_percentual;
Self.Fcont_social         := TModelERPfinanceira(Model).cont_social;
Self.Fcont_social_percentual         := TModelERPfinanceira(Model).cont_social_percentual;
Self.Foutros_encargos         := TModelERPfinanceira(Model).outros_encargos;
Self.Foutros_encargos_percentual         := TModelERPfinanceira(Model).outros_encargos_percentual;
Self.Fencargos_fedarais         := TModelERPfinanceira(Model).encargos_fedarais;
Self.Fencargos_federais_percentual         := TModelERPfinanceira(Model).encargos_federais_percentual;
Self.Fsimples_nacional         := TModelERPfinanceira(Model).simples_nacional;
Self.Fsimples_nacional_percentual         := TModelERPfinanceira(Model).simples_nacional_percentual;
Self.Fcusto_operacional         := TModelERPfinanceira(Model).custo_operacional;
Self.Fcusto_operacional_percentual         := TModelERPfinanceira(Model).custo_operacional_percentual;
Self.Fcomissao_venda         := TModelERPfinanceira(Model).comissao_venda;
Self.Fcomissao_venda_percentual         := TModelERPfinanceira(Model).comissao_venda_percentual;
Self.Fcomissao_servico         := TModelERPfinanceira(Model).comissao_servico;
Self.Fcomissao_servico_percentual         := TModelERPfinanceira(Model).comissao_servico_percentual;
Self.Fmargem_lucro         := TModelERPfinanceira(Model).margem_lucro;
Self.Fmargem_lucro_percentual         := TModelERPfinanceira(Model).margem_lucro_percentual;
Self.Fmargem_lucro_atacado         := TModelERPfinanceira(Model).margem_lucro_atacado;
Self.Fmargem_lucro_atacado_percentual         := TModelERPfinanceira(Model).margem_lucro_atacado_percentual;
Self.Fsugestao_venda         := TModelERPfinanceira(Model).sugestao_venda;
Self.Fsugestao_venda_atacado         := TModelERPfinanceira(Model).sugestao_venda_atacado;
Self.Fid_produto         := TModelERPfinanceira(Model).id_produto;
Self.Fnome_produto         := TModelERPfinanceira(Model).nome_produto;
Self.Fid_compra         := TModelERPfinanceira(Model).id_compra;
Self.Fmargem_lucro_varejo         := TModelERPfinanceira(Model).margem_lucro_varejo;
Self.Fpreco_venda_atual_varejo         := TModelERPfinanceira(Model).preco_venda_atual_varejo;
Self.Fpreco_venda_atual_atacado         := TModelERPfinanceira(Model).preco_venda_atual_atacado;
Self.Fmargem_lucro_atacado2         := TModelERPfinanceira(Model).margem_lucro_atacado2;
Self.Fvl_pmz         := TModelERPfinanceira(Model).vl_pmz;
Self.Fpreco_custo         := TModelERPfinanceira(Model).preco_custo;
Self.Fpreco_custo_atacado         := TModelERPfinanceira(Model).preco_custo_atacado;
Self.Fdata_inicial         := TModelERPfinanceira(Model).data_inicial;
Self.Fdata_final         := TModelERPfinanceira(Model).data_final;
Self.Fquantidade         := TModelERPfinanceira(Model).quantidade;
Self.Fmedia_venda         := TModelERPfinanceira(Model).media_venda;
Self.Ftotal         := TModelERPfinanceira(Model).total;
Self.Fxpmz         := TModelERPfinanceira(Model).xpmz;
Self.Finadimplencia         := TModelERPfinanceira(Model).inadimplencia;
Self.Fid_grupo         := TModelERPfinanceira(Model).id_grupo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfinanceira.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfinanceira.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfinanceira.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfinanceira.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPfinanceira.Setpreco_compra(const Value: Boolean);   
begin                
  Fpreco_compra := Value;   
end;                 

procedure TModelERPfinanceira.Setvalor_frete(const Value: Boolean);   
begin                
  Fvalor_frete := Value;   
end;                 

procedure TModelERPfinanceira.Setfrete_percentual(const Value: Boolean);   
begin                
  Ffrete_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setipi_entrada_percentual(const Value: Boolean);   
begin                
  Fipi_entrada_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setvalor_ipi(const Value: Boolean);   
begin                
  Fvalor_ipi := Value;   
end;                 

procedure TModelERPfinanceira.Setcredito_icms(const Value: Boolean);   
begin                
  Fcredito_icms := Value;   
end;                 

procedure TModelERPfinanceira.Setcredito_percentual(const Value: Boolean);   
begin                
  Fcredito_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setcusto_financeiro(const Value: Boolean);   
begin                
  Fcusto_financeiro := Value;   
end;                 

procedure TModelERPfinanceira.Setcusto_financeiro_percentual(const Value: Boolean);   
begin                
  Fcusto_financeiro_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setoutras_despesas(const Value: Boolean);   
begin                
  Foutras_despesas := Value;   
end;                 

procedure TModelERPfinanceira.Setoutras_despesas_percentual(const Value: Boolean);   
begin                
  Foutras_despesas_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setsubstituicao(const Value: Boolean);   
begin                
  Fsubstituicao := Value;   
end;                 

procedure TModelERPfinanceira.Setsubstituicao_percentual(const Value: Boolean);   
begin                
  Fsubstituicao_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Seticms_saida(const Value: Boolean);   
begin                
  Ficms_saida := Value;   
end;                 

procedure TModelERPfinanceira.Seticms_saida_percentual(const Value: Boolean);   
begin                
  Ficms_saida_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Seticms_saida_atacado(const Value: Boolean);   
begin                
  Ficms_saida_atacado := Value;   
end;                 

procedure TModelERPfinanceira.Seticms_saida_atac_percentual(const Value: Boolean);   
begin                
  Ficms_saida_atac_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setipi(const Value: Boolean);   
begin                
  Fipi := Value;   
end;                 

procedure TModelERPfinanceira.Setipi_percentual(const Value: Boolean);   
begin                
  Fipi_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setcofins(const Value: Boolean);   
begin                
  Fcofins := Value;   
end;                 

procedure TModelERPfinanceira.Setcofins_percentual(const Value: Boolean);   
begin                
  Fcofins_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setpis(const Value: Boolean);   
begin                
  Fpis := Value;   
end;                 

procedure TModelERPfinanceira.Setpis_percentual(const Value: Boolean);   
begin                
  Fpis_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setirpj(const Value: Boolean);   
begin                
  Firpj := Value;   
end;                 

procedure TModelERPfinanceira.Setirpj_percentual(const Value: Boolean);   
begin                
  Firpj_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setcont_social(const Value: Boolean);   
begin                
  Fcont_social := Value;   
end;                 

procedure TModelERPfinanceira.Setcont_social_percentual(const Value: Boolean);   
begin                
  Fcont_social_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setoutros_encargos(const Value: Boolean);   
begin                
  Foutros_encargos := Value;   
end;                 

procedure TModelERPfinanceira.Setoutros_encargos_percentual(const Value: Boolean);   
begin                
  Foutros_encargos_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setencargos_fedarais(const Value: Boolean);   
begin                
  Fencargos_fedarais := Value;   
end;                 

procedure TModelERPfinanceira.Setencargos_federais_percentual(const Value: Boolean);   
begin                
  Fencargos_federais_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setsimples_nacional(const Value: Boolean);   
begin                
  Fsimples_nacional := Value;   
end;                 

procedure TModelERPfinanceira.Setsimples_nacional_percentual(const Value: Boolean);   
begin                
  Fsimples_nacional_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setcusto_operacional(const Value: Boolean);   
begin                
  Fcusto_operacional := Value;   
end;                 

procedure TModelERPfinanceira.Setcusto_operacional_percentual(const Value: Boolean);   
begin                
  Fcusto_operacional_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setcomissao_venda(const Value: Boolean);   
begin                
  Fcomissao_venda := Value;   
end;                 

procedure TModelERPfinanceira.Setcomissao_venda_percentual(const Value: Boolean);   
begin                
  Fcomissao_venda_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setcomissao_servico(const Value: Boolean);   
begin                
  Fcomissao_servico := Value;   
end;                 

procedure TModelERPfinanceira.Setcomissao_servico_percentual(const Value: Boolean);   
begin                
  Fcomissao_servico_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setmargem_lucro(const Value: Boolean);   
begin                
  Fmargem_lucro := Value;   
end;                 

procedure TModelERPfinanceira.Setmargem_lucro_percentual(const Value: Boolean);   
begin                
  Fmargem_lucro_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setmargem_lucro_atacado(const Value: Boolean);   
begin                
  Fmargem_lucro_atacado := Value;   
end;                 

procedure TModelERPfinanceira.Setmargem_lucro_atacado_percentual(const Value: Boolean);   
begin                
  Fmargem_lucro_atacado_percentual := Value;   
end;                 

procedure TModelERPfinanceira.Setsugestao_venda(const Value: Boolean);   
begin                
  Fsugestao_venda := Value;   
end;                 

procedure TModelERPfinanceira.Setsugestao_venda_atacado(const Value: Boolean);   
begin                
  Fsugestao_venda_atacado := Value;   
end;                 

procedure TModelERPfinanceira.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPfinanceira.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPfinanceira.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPfinanceira.Setmargem_lucro_varejo(const Value: Boolean);   
begin                
  Fmargem_lucro_varejo := Value;   
end;                 

procedure TModelERPfinanceira.Setpreco_venda_atual_varejo(const Value: Boolean);   
begin                
  Fpreco_venda_atual_varejo := Value;   
end;                 

procedure TModelERPfinanceira.Setpreco_venda_atual_atacado(const Value: Boolean);   
begin                
  Fpreco_venda_atual_atacado := Value;   
end;                 

procedure TModelERPfinanceira.Setmargem_lucro_atacado2(const Value: Boolean);   
begin                
  Fmargem_lucro_atacado2 := Value;   
end;                 

procedure TModelERPfinanceira.Setvl_pmz(const Value: Boolean);   
begin                
  Fvl_pmz := Value;   
end;                 

procedure TModelERPfinanceira.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPfinanceira.Setpreco_custo_atacado(const Value: Boolean);   
begin                
  Fpreco_custo_atacado := Value;   
end;                 

procedure TModelERPfinanceira.Setdata_inicial(const Value: Boolean);   
begin                
  Fdata_inicial := Value;   
end;                 

procedure TModelERPfinanceira.Setdata_final(const Value: Boolean);   
begin                
  Fdata_final := Value;   
end;                 

procedure TModelERPfinanceira.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPfinanceira.Setmedia_venda(const Value: Boolean);   
begin                
  Fmedia_venda := Value;   
end;                 

procedure TModelERPfinanceira.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPfinanceira.Setxpmz(const Value: Boolean);   
begin                
  Fxpmz := Value;   
end;                 

procedure TModelERPfinanceira.Setinadimplencia(const Value: Boolean);   
begin                
  Finadimplencia := Value;   
end;                 

procedure TModelERPfinanceira.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 


end.
