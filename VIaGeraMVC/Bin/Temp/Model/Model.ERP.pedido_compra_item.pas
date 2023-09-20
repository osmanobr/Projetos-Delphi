unit Model.ERP.pedido_compra_duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidocompraduplicata = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_pedido_compra : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Ftipo : indefinido;
    Fquantidade : Double;
    Funitario : Double;
    Ftotal : Double;
    Fchegou : Boolean;
    Fcst : indefinido;
    Fbc_icms : Double;
    Ficms : Double;
    Fvl_icms : Double;
    Freducao : Double;
    Fbc_st : Double;
    Fvl_st : Double;
    Fipi : Double;
    Fvl_ipi : Double;
    Festoque_data_pedido : Double;
    Freferencia : indefinido;
    Fclick : Boolean;
    Fdata_solicitacao : TDateTime;
    Fsolicitante : indefinido;
    Fsolicitacao : indefinido;
    Fbc_ipi : Double;
    Fentregue : Double;
    Fem_espera : Double;
    Fnome_fornecedor : indefinido;
    Funidade : indefinido;
    Fitens : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_pedido_compra(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Settipo(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setunitario(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setchegou(const Value: Boolean);
    procedure Setcst(const Value: indefinido);
    procedure Setbc_icms(const Value: Double);
    procedure Seticms(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setreducao(const Value: Double);
    procedure Setbc_st(const Value: Double);
    procedure Setvl_st(const Value: Double);
    procedure Setipi(const Value: Double);
    procedure Setvl_ipi(const Value: Double);
    procedure Setestoque_data_pedido(const Value: Double);
    procedure Setreferencia(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setdata_solicitacao(const Value: TDateTime);
    procedure Setsolicitante(const Value: indefinido);
    procedure Setsolicitacao(const Value: indefinido);
    procedure Setbc_ipi(const Value: Double);
    procedure Setentregue(const Value: Double);
    procedure Setem_espera(const Value: Double);
    procedure Setnome_fornecedor(const Value: indefinido);
    procedure Setunidade(const Value: indefinido);
    procedure Setitens(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_pedido_compra     : Integer read Fid_pedido_compra write Setid_pedido_compra;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property tipo     : indefinido read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unitario     : Double read Funitario write Setunitario;
    property total     : Double read Ftotal write Settotal;
    property chegou     : Boolean read Fchegou write Setchegou;
    property cst     : indefinido read Fcst write Setcst;
    property bc_icms     : Double read Fbc_icms write Setbc_icms;
    property icms     : Double read Ficms write Seticms;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property reducao     : Double read Freducao write Setreducao;
    property bc_st     : Double read Fbc_st write Setbc_st;
    property vl_st     : Double read Fvl_st write Setvl_st;
    property ipi     : Double read Fipi write Setipi;
    property vl_ipi     : Double read Fvl_ipi write Setvl_ipi;
    property estoque_data_pedido     : Double read Festoque_data_pedido write Setestoque_data_pedido;
    property referencia     : indefinido read Freferencia write Setreferencia;
    property click     : Boolean read Fclick write Setclick;
    property data_solicitacao     : TDateTime read Fdata_solicitacao write Setdata_solicitacao;
    property solicitante     : indefinido read Fsolicitante write Setsolicitante;
    property solicitacao     : indefinido read Fsolicitacao write Setsolicitacao;
    property bc_ipi     : Double read Fbc_ipi write Setbc_ipi;
    property entregue     : Double read Fentregue write Setentregue;
    property em_espera     : Double read Fem_espera write Setem_espera;
    property nome_fornecedor     : indefinido read Fnome_fornecedor write Setnome_fornecedor;
    property unidade     : indefinido read Funidade write Setunidade;
    property itens     : Double read Fitens write Setitens;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidocompraduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidocompraduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidocompraduplicata(Model).id;
Self.Fid_empresa         := TModelERPpedidocompraduplicata(Model).id_empresa;
Self.Fid_pedido_compra         := TModelERPpedidocompraduplicata(Model).id_pedido_compra;
Self.Fid_produto         := TModelERPpedidocompraduplicata(Model).id_produto;
Self.Fnome_produto         := TModelERPpedidocompraduplicata(Model).nome_produto;
Self.Ftipo         := TModelERPpedidocompraduplicata(Model).tipo;
Self.Fquantidade         := TModelERPpedidocompraduplicata(Model).quantidade;
Self.Funitario         := TModelERPpedidocompraduplicata(Model).unitario;
Self.Ftotal         := TModelERPpedidocompraduplicata(Model).total;
Self.Fchegou         := TModelERPpedidocompraduplicata(Model).chegou;
Self.Fcst         := TModelERPpedidocompraduplicata(Model).cst;
Self.Fbc_icms         := TModelERPpedidocompraduplicata(Model).bc_icms;
Self.Ficms         := TModelERPpedidocompraduplicata(Model).icms;
Self.Fvl_icms         := TModelERPpedidocompraduplicata(Model).vl_icms;
Self.Freducao         := TModelERPpedidocompraduplicata(Model).reducao;
Self.Fbc_st         := TModelERPpedidocompraduplicata(Model).bc_st;
Self.Fvl_st         := TModelERPpedidocompraduplicata(Model).vl_st;
Self.Fipi         := TModelERPpedidocompraduplicata(Model).ipi;
Self.Fvl_ipi         := TModelERPpedidocompraduplicata(Model).vl_ipi;
Self.Festoque_data_pedido         := TModelERPpedidocompraduplicata(Model).estoque_data_pedido;
Self.Freferencia         := TModelERPpedidocompraduplicata(Model).referencia;
Self.Fclick         := TModelERPpedidocompraduplicata(Model).click;
Self.Fdata_solicitacao         := TModelERPpedidocompraduplicata(Model).data_solicitacao;
Self.Fsolicitante         := TModelERPpedidocompraduplicata(Model).solicitante;
Self.Fsolicitacao         := TModelERPpedidocompraduplicata(Model).solicitacao;
Self.Fbc_ipi         := TModelERPpedidocompraduplicata(Model).bc_ipi;
Self.Fentregue         := TModelERPpedidocompraduplicata(Model).entregue;
Self.Fem_espera         := TModelERPpedidocompraduplicata(Model).em_espera;
Self.Fnome_fornecedor         := TModelERPpedidocompraduplicata(Model).nome_fornecedor;
Self.Funidade         := TModelERPpedidocompraduplicata(Model).unidade;
Self.Fitens         := TModelERPpedidocompraduplicata(Model).itens;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidocompraduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidocompraduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidocompraduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setid_pedido_compra(const Value: Boolean);   
begin                
  Fid_pedido_compra := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setchegou(const Value: Boolean);   
begin                
  Fchegou := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setcst(const Value: Boolean);   
begin                
  Fcst := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setbc_icms(const Value: Boolean);   
begin                
  Fbc_icms := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setreducao(const Value: Boolean);   
begin                
  Freducao := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setbc_st(const Value: Boolean);   
begin                
  Fbc_st := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setvl_st(const Value: Boolean);   
begin                
  Fvl_st := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setipi(const Value: Boolean);   
begin                
  Fipi := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setvl_ipi(const Value: Boolean);   
begin                
  Fvl_ipi := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setestoque_data_pedido(const Value: Boolean);   
begin                
  Festoque_data_pedido := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setreferencia(const Value: Boolean);   
begin                
  Freferencia := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setdata_solicitacao(const Value: Boolean);   
begin                
  Fdata_solicitacao := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setsolicitante(const Value: Boolean);   
begin                
  Fsolicitante := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setsolicitacao(const Value: Boolean);   
begin                
  Fsolicitacao := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setbc_ipi(const Value: Boolean);   
begin                
  Fbc_ipi := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setentregue(const Value: Boolean);   
begin                
  Fentregue := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setem_espera(const Value: Boolean);   
begin                
  Fem_espera := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPpedidocompraduplicata.Setitens(const Value: Boolean);   
begin                
  Fitens := Value;   
end;                 


end.
