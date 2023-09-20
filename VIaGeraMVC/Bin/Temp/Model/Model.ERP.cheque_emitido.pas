unit Model.ERP.change_log;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPchangelog = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_emissao : TDateTime;
    Fdata_vencto : TDateTime;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : WideString;
    Fid_conta : WideString;
    Fid_caixa : Integer;
    Fid_banco : Integer;
    Fid_contacorrente : WideString;
    Fagencia : WideString;
    Fcheque : WideString;
    Fvalor : Double;
    Fstatus : WideString;
    Fdata_deposito : TDateTime;
    Fcustodiado_para : WideString;
    Fdata_custodia : TDateTime;
    Fid_devolucao : Integer;
    Fdata_devolucao : TDateTime;
    Fid_forma : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_conta_baixa : WideString;
    Fid_forma_baixa : Integer;
    Fclick : Boolean;
    Fid_compra : Integer;
    Fobs : indefinido;
    Fcustodia : Boolean;
    Fid_cliser : Integer;
    Ffilial : WideString;
    Fmatriz : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setdocumento(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_banco(const Value: Integer);
    procedure Setid_contacorrente(const Value: WideString);
    procedure Setagencia(const Value: WideString);
    procedure Setcheque(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setstatus(const Value: WideString);
    procedure Setdata_deposito(const Value: TDateTime);
    procedure Setcustodiado_para(const Value: WideString);
    procedure Setdata_custodia(const Value: TDateTime);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setdata_devolucao(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_conta_baixa(const Value: WideString);
    procedure Setid_forma_baixa(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setid_compra(const Value: Integer);
    procedure Setobs(const Value: indefinido);
    procedure Setcustodia(const Value: Boolean);
    procedure Setid_cliser(const Value: Integer);
    procedure Setfilial(const Value: WideString);
    procedure Setmatriz(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property documento     : WideString read Fdocumento write Setdocumento;
    property parcela     : WideString read Fparcela write Setparcela;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property id_contacorrente     : WideString read Fid_contacorrente write Setid_contacorrente;
    property agencia     : WideString read Fagencia write Setagencia;
    property cheque     : WideString read Fcheque write Setcheque;
    property valor     : Double read Fvalor write Setvalor;
    property status     : WideString read Fstatus write Setstatus;
    property data_deposito     : TDateTime read Fdata_deposito write Setdata_deposito;
    property custodiado_para     : WideString read Fcustodiado_para write Setcustodiado_para;
    property data_custodia     : TDateTime read Fdata_custodia write Setdata_custodia;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property data_devolucao     : TDateTime read Fdata_devolucao write Setdata_devolucao;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_conta_baixa     : WideString read Fid_conta_baixa write Setid_conta_baixa;
    property id_forma_baixa     : Integer read Fid_forma_baixa write Setid_forma_baixa;
    property click     : Boolean read Fclick write Setclick;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property obs     : indefinido read Fobs write Setobs;
    property custodia     : Boolean read Fcustodia write Setcustodia;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property filial     : WideString read Ffilial write Setfilial;
    property matriz     : WideString read Fmatriz write Setmatriz;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPchangelog.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPchangelog) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPchangelog(Model).id;
Self.Fid_empresa         := TModelERPchangelog(Model).id_empresa;
Self.Fdata_emissao         := TModelERPchangelog(Model).data_emissao;
Self.Fdata_vencto         := TModelERPchangelog(Model).data_vencto;
Self.Fdocumento         := TModelERPchangelog(Model).documento;
Self.Fparcela         := TModelERPchangelog(Model).parcela;
Self.Fid_fornecedor         := TModelERPchangelog(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPchangelog(Model).nome_fornecedor;
Self.Fid_conta         := TModelERPchangelog(Model).id_conta;
Self.Fid_caixa         := TModelERPchangelog(Model).id_caixa;
Self.Fid_banco         := TModelERPchangelog(Model).id_banco;
Self.Fid_contacorrente         := TModelERPchangelog(Model).id_contacorrente;
Self.Fagencia         := TModelERPchangelog(Model).agencia;
Self.Fcheque         := TModelERPchangelog(Model).cheque;
Self.Fvalor         := TModelERPchangelog(Model).valor;
Self.Fstatus         := TModelERPchangelog(Model).status;
Self.Fdata_deposito         := TModelERPchangelog(Model).data_deposito;
Self.Fcustodiado_para         := TModelERPchangelog(Model).custodiado_para;
Self.Fdata_custodia         := TModelERPchangelog(Model).data_custodia;
Self.Fid_devolucao         := TModelERPchangelog(Model).id_devolucao;
Self.Fdata_devolucao         := TModelERPchangelog(Model).data_devolucao;
Self.Fid_forma         := TModelERPchangelog(Model).id_forma;
Self.Fid_pedido         := TModelERPchangelog(Model).id_pedido;
Self.Fid_os         := TModelERPchangelog(Model).id_os;
Self.Fid_conta_baixa         := TModelERPchangelog(Model).id_conta_baixa;
Self.Fid_forma_baixa         := TModelERPchangelog(Model).id_forma_baixa;
Self.Fclick         := TModelERPchangelog(Model).click;
Self.Fid_compra         := TModelERPchangelog(Model).id_compra;
Self.Fobs         := TModelERPchangelog(Model).obs;
Self.Fcustodia         := TModelERPchangelog(Model).custodia;
Self.Fid_cliser         := TModelERPchangelog(Model).id_cliser;
Self.Ffilial         := TModelERPchangelog(Model).filial;
Self.Fmatriz         := TModelERPchangelog(Model).matriz;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPchangelog.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPchangelog.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPchangelog.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPchangelog.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPchangelog.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPchangelog.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPchangelog.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPchangelog.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPchangelog.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPchangelog.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPchangelog.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPchangelog.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPchangelog.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPchangelog.Setid_contacorrente(const Value: Boolean);   
begin                
  Fid_contacorrente := Value;   
end;                 

procedure TModelERPchangelog.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPchangelog.Setcheque(const Value: Boolean);   
begin                
  Fcheque := Value;   
end;                 

procedure TModelERPchangelog.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPchangelog.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPchangelog.Setdata_deposito(const Value: Boolean);   
begin                
  Fdata_deposito := Value;   
end;                 

procedure TModelERPchangelog.Setcustodiado_para(const Value: Boolean);   
begin                
  Fcustodiado_para := Value;   
end;                 

procedure TModelERPchangelog.Setdata_custodia(const Value: Boolean);   
begin                
  Fdata_custodia := Value;   
end;                 

procedure TModelERPchangelog.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPchangelog.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 

procedure TModelERPchangelog.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPchangelog.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPchangelog.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPchangelog.Setid_conta_baixa(const Value: Boolean);   
begin                
  Fid_conta_baixa := Value;   
end;                 

procedure TModelERPchangelog.Setid_forma_baixa(const Value: Boolean);   
begin                
  Fid_forma_baixa := Value;   
end;                 

procedure TModelERPchangelog.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPchangelog.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPchangelog.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPchangelog.Setcustodia(const Value: Boolean);   
begin                
  Fcustodia := Value;   
end;                 

procedure TModelERPchangelog.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPchangelog.Setfilial(const Value: Boolean);   
begin                
  Ffilial := Value;   
end;                 

procedure TModelERPchangelog.Setmatriz(const Value: Boolean);   
begin                
  Fmatriz := Value;   
end;                 


end.
