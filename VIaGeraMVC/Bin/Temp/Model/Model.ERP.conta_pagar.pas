unit Model.ERP.consignado_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPconsignadoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_pgto : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fnota : WideString;
    Fid_compra : Integer;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_conta : WideString;
    Ftx_juros : Double;
    Fvl_juros : Double;
    Fvl_total : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_divida : Double;
    Fvl_geral : Double;
    Fvl_jurospago : Double;
    Fsituacao : WideString;
    Fclick : Boolean;
    Fchegou : WideString;
    Fobs : indefinido;
    Fid_custodia_cheque : Integer;
    Fid_custodia_titulo : Integer;
    Fid_funcionario : Integer;
    Ffornecedor : WideString;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;
    Fexcluido : Boolean;
    Fdata_competencia : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setdata_pgto(const Value: TDateTime);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setnota(const Value: WideString);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Settx_juros(const Value: Double);
    procedure Setvl_juros(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_pago(const Value: Double);
    procedure Setvl_divida(const Value: Double);
    procedure Setvl_geral(const Value: Double);
    procedure Setvl_jurospago(const Value: Double);
    procedure Setsituacao(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setchegou(const Value: WideString);
    procedure Setobs(const Value: indefinido);
    procedure Setid_custodia_cheque(const Value: Integer);
    procedure Setid_custodia_titulo(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setfornecedor(const Value: WideString);
    procedure Setid_cliser(const Value: Integer);
    procedure Setfilial(const Value: WideString);
    procedure Setmatriz(const Value: WideString);
    procedure Setexcluido(const Value: Boolean);
    procedure Setdata_competencia(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property data_pgto     : TDateTime read Fdata_pgto write Setdata_pgto;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property nota     : WideString read Fnota write Setnota;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property tx_juros     : Double read Ftx_juros write Settx_juros;
    property vl_juros     : Double read Fvl_juros write Setvl_juros;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_pago     : Double read Fvl_pago write Setvl_pago;
    property vl_divida     : Double read Fvl_divida write Setvl_divida;
    property vl_geral     : Double read Fvl_geral write Setvl_geral;
    property vl_jurospago     : Double read Fvl_jurospago write Setvl_jurospago;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property click     : Boolean read Fclick write Setclick;
    property chegou     : WideString read Fchegou write Setchegou;
    property obs     : indefinido read Fobs write Setobs;
    property id_custodia_cheque     : Integer read Fid_custodia_cheque write Setid_custodia_cheque;
    property id_custodia_titulo     : Integer read Fid_custodia_titulo write Setid_custodia_titulo;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property fornecedor     : WideString read Ffornecedor write Setfornecedor;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property filial     : WideString read Ffilial write Setfilial;
    property matriz     : WideString read Fmatriz write Setmatriz;
    property excluido     : Boolean read Fexcluido write Setexcluido;
    property data_competencia     : TDateTime read Fdata_competencia write Setdata_competencia;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPconsignadoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPconsignadoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPconsignadoitem(Model).id;
Self.Fid_empresa         := TModelERPconsignadoitem(Model).id_empresa;
Self.Fdata_emissao         := TModelERPconsignadoitem(Model).data_emissao;
Self.Fdata_pgto         := TModelERPconsignadoitem(Model).data_pgto;
Self.Fdata_vencto         := TModelERPconsignadoitem(Model).data_vencto;
Self.Fdocumento         := TModelERPconsignadoitem(Model).documento;
Self.Fparcela         := TModelERPconsignadoitem(Model).parcela;
Self.Fnota         := TModelERPconsignadoitem(Model).nota;
Self.Fid_compra         := TModelERPconsignadoitem(Model).id_compra;
Self.Fid_fornecedor         := TModelERPconsignadoitem(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPconsignadoitem(Model).nome_fornecedor;
Self.Fid_forma         := TModelERPconsignadoitem(Model).id_forma;
Self.Fid_caixa         := TModelERPconsignadoitem(Model).id_caixa;
Self.Fid_conta         := TModelERPconsignadoitem(Model).id_conta;
Self.Ftx_juros         := TModelERPconsignadoitem(Model).tx_juros;
Self.Fvl_juros         := TModelERPconsignadoitem(Model).vl_juros;
Self.Fvl_total         := TModelERPconsignadoitem(Model).vl_total;
Self.Fvl_desconto         := TModelERPconsignadoitem(Model).vl_desconto;
Self.Fvl_pago         := TModelERPconsignadoitem(Model).vl_pago;
Self.Fvl_divida         := TModelERPconsignadoitem(Model).vl_divida;
Self.Fvl_geral         := TModelERPconsignadoitem(Model).vl_geral;
Self.Fvl_jurospago         := TModelERPconsignadoitem(Model).vl_jurospago;
Self.Fsituacao         := TModelERPconsignadoitem(Model).situacao;
Self.Fclick         := TModelERPconsignadoitem(Model).click;
Self.Fchegou         := TModelERPconsignadoitem(Model).chegou;
Self.Fobs         := TModelERPconsignadoitem(Model).obs;
Self.Fid_custodia_cheque         := TModelERPconsignadoitem(Model).id_custodia_cheque;
Self.Fid_custodia_titulo         := TModelERPconsignadoitem(Model).id_custodia_titulo;
Self.Fid_funcionario         := TModelERPconsignadoitem(Model).id_funcionario;
Self.Ffornecedor         := TModelERPconsignadoitem(Model).fornecedor;
Self.Fid_cliser         := TModelERPconsignadoitem(Model).id_cliser;
Self.Ffilial         := TModelERPconsignadoitem(Model).filial;
Self.Fmatriz         := TModelERPconsignadoitem(Model).matriz;
Self.Fexcluido         := TModelERPconsignadoitem(Model).excluido;
Self.Fdata_competencia         := TModelERPconsignadoitem(Model).data_competencia;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPconsignadoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPconsignadoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPconsignadoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPconsignadoitem.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPconsignadoitem.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPconsignadoitem.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPconsignadoitem.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPconsignadoitem.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPconsignadoitem.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPconsignadoitem.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPconsignadoitem.Settx_juros(const Value: Boolean);   
begin                
  Ftx_juros := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_juros(const Value: Boolean);   
begin                
  Fvl_juros := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_pago(const Value: Boolean);   
begin                
  Fvl_pago := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_divida(const Value: Boolean);   
begin                
  Fvl_divida := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_geral(const Value: Boolean);   
begin                
  Fvl_geral := Value;   
end;                 

procedure TModelERPconsignadoitem.Setvl_jurospago(const Value: Boolean);   
begin                
  Fvl_jurospago := Value;   
end;                 

procedure TModelERPconsignadoitem.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPconsignadoitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPconsignadoitem.Setchegou(const Value: Boolean);   
begin                
  Fchegou := Value;   
end;                 

procedure TModelERPconsignadoitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_custodia_cheque(const Value: Boolean);   
begin                
  Fid_custodia_cheque := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_custodia_titulo(const Value: Boolean);   
begin                
  Fid_custodia_titulo := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPconsignadoitem.Setfornecedor(const Value: Boolean);   
begin                
  Ffornecedor := Value;   
end;                 

procedure TModelERPconsignadoitem.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPconsignadoitem.Setfilial(const Value: Boolean);   
begin                
  Ffilial := Value;   
end;                 

procedure TModelERPconsignadoitem.Setmatriz(const Value: Boolean);   
begin                
  Fmatriz := Value;   
end;                 

procedure TModelERPconsignadoitem.Setexcluido(const Value: Boolean);   
begin                
  Fexcluido := Value;   
end;                 

procedure TModelERPconsignadoitem.Setdata_competencia(const Value: Boolean);   
begin                
  Fdata_competencia := Value;   
end;                 


end.
