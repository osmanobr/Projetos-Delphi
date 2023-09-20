unit Model.ERP.agro_diagnostico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPagrodiagnostico = class(TModelBase)

private
    Fid : Integer;
    Fid_empresas : Integer;
    Fnome_equipamento : WideString;
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
    Fnpatrimonio : WideString;
    Fpatrimonio : Boolean;
    Fitens_embalagem : Double;
    Faplicacao : indefinido;
    Fativo : WideString;
    Fclick : Boolean;
    Fid_produto : Integer;
    Fid_insumo : Integer;
    Fpreco_venda : Double;
    Fsetor : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresas(const Value: Integer);
    procedure Setnome_equipamento(const Value: WideString);
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
    procedure Setnpatrimonio(const Value: WideString);
    procedure Setpatrimonio(const Value: Boolean);
    procedure Setitens_embalagem(const Value: Double);
    procedure Setaplicacao(const Value: indefinido);
    procedure Setativo(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setid_produto(const Value: Integer);
    procedure Setid_insumo(const Value: Integer);
    procedure Setpreco_venda(const Value: Double);
    procedure Setsetor(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresas     : Integer read Fid_empresas write Setid_empresas;
    property nome_equipamento     : WideString read Fnome_equipamento write Setnome_equipamento;
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
    property npatrimonio     : WideString read Fnpatrimonio write Setnpatrimonio;
    property patrimonio     : Boolean read Fpatrimonio write Setpatrimonio;
    property itens_embalagem     : Double read Fitens_embalagem write Setitens_embalagem;
    property aplicacao     : indefinido read Faplicacao write Setaplicacao;
    property ativo     : WideString read Fativo write Setativo;
    property click     : Boolean read Fclick write Setclick;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property id_insumo     : Integer read Fid_insumo write Setid_insumo;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property setor     : WideString read Fsetor write Setsetor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPagrodiagnostico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPagrodiagnostico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPagrodiagnostico(Model).id;
Self.Fid_empresas         := TModelERPagrodiagnostico(Model).id_empresas;
Self.Fnome_equipamento         := TModelERPagrodiagnostico(Model).nome_equipamento;
Self.Fcodigo_fabricante         := TModelERPagrodiagnostico(Model).codigo_fabricante;
Self.Funidade         := TModelERPagrodiagnostico(Model).unidade;
Self.Fvalidade         := TModelERPagrodiagnostico(Model).validade;
Self.Ftp_peso         := TModelERPagrodiagnostico(Model).tp_peso;
Self.Fpeso         := TModelERPagrodiagnostico(Model).peso;
Self.Fid_fornecedor         := TModelERPagrodiagnostico(Model).id_fornecedor;
Self.Festoque_minimo         := TModelERPagrodiagnostico(Model).estoque_minimo;
Self.Festoque_atual         := TModelERPagrodiagnostico(Model).estoque_atual;
Self.Fpreco_custo         := TModelERPagrodiagnostico(Model).preco_custo;
Self.Fpreco_custosemfrete         := TModelERPagrodiagnostico(Model).preco_custosemfrete;
Self.Fpreco_compra         := TModelERPagrodiagnostico(Model).preco_compra;
Self.Fvl_frete         := TModelERPagrodiagnostico(Model).vl_frete;
Self.Fperc_frete         := TModelERPagrodiagnostico(Model).perc_frete;
Self.Fipi_entrada         := TModelERPagrodiagnostico(Model).ipi_entrada;
Self.Ficms_entrada         := TModelERPagrodiagnostico(Model).icms_entrada;
Self.Fvl_substituicao         := TModelERPagrodiagnostico(Model).vl_substituicao;
Self.Foutras_despesas         := TModelERPagrodiagnostico(Model).outras_despesas;
Self.Ffracionado         := TModelERPagrodiagnostico(Model).fracionado;
Self.Fembalagem         := TModelERPagrodiagnostico(Model).embalagem;
Self.Fnpatrimonio         := TModelERPagrodiagnostico(Model).npatrimonio;
Self.Fpatrimonio         := TModelERPagrodiagnostico(Model).patrimonio;
Self.Fitens_embalagem         := TModelERPagrodiagnostico(Model).itens_embalagem;
Self.Faplicacao         := TModelERPagrodiagnostico(Model).aplicacao;
Self.Fativo         := TModelERPagrodiagnostico(Model).ativo;
Self.Fclick         := TModelERPagrodiagnostico(Model).click;
Self.Fid_produto         := TModelERPagrodiagnostico(Model).id_produto;
Self.Fid_insumo         := TModelERPagrodiagnostico(Model).id_insumo;
Self.Fpreco_venda         := TModelERPagrodiagnostico(Model).preco_venda;
Self.Fsetor         := TModelERPagrodiagnostico(Model).setor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPagrodiagnostico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPagrodiagnostico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPagrodiagnostico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setid_empresas(const Value: Boolean);   
begin                
  Fid_empresas := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setnome_equipamento(const Value: Boolean);   
begin                
  Fnome_equipamento := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setvalidade(const Value: Boolean);   
begin                
  Fvalidade := Value;   
end;                 

procedure TModelERPagrodiagnostico.Settp_peso(const Value: Boolean);   
begin                
  Ftp_peso := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setpeso(const Value: Boolean);   
begin                
  Fpeso := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setestoque_minimo(const Value: Boolean);   
begin                
  Festoque_minimo := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setpreco_custosemfrete(const Value: Boolean);   
begin                
  Fpreco_custosemfrete := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setpreco_compra(const Value: Boolean);   
begin                
  Fpreco_compra := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setvl_frete(const Value: Boolean);   
begin                
  Fvl_frete := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setperc_frete(const Value: Boolean);   
begin                
  Fperc_frete := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setipi_entrada(const Value: Boolean);   
begin                
  Fipi_entrada := Value;   
end;                 

procedure TModelERPagrodiagnostico.Seticms_entrada(const Value: Boolean);   
begin                
  Ficms_entrada := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setvl_substituicao(const Value: Boolean);   
begin                
  Fvl_substituicao := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setoutras_despesas(const Value: Boolean);   
begin                
  Foutras_despesas := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setfracionado(const Value: Boolean);   
begin                
  Ffracionado := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setembalagem(const Value: Boolean);   
begin                
  Fembalagem := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setnpatrimonio(const Value: Boolean);   
begin                
  Fnpatrimonio := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setpatrimonio(const Value: Boolean);   
begin                
  Fpatrimonio := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setitens_embalagem(const Value: Boolean);   
begin                
  Fitens_embalagem := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setaplicacao(const Value: Boolean);   
begin                
  Faplicacao := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setid_insumo(const Value: Boolean);   
begin                
  Fid_insumo := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPagrodiagnostico.Setsetor(const Value: Boolean);   
begin                
  Fsetor := Value;   
end;                 


end.
