unit Model.ERP.mesa_haver;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesahaver = class(TModelBase)

private
    Fid : Integer;
    Fid_mesa : Integer;
    Fmesa : WideString;
    Fitem : Integer;
    Fdata : TDateTime;
    Fcupom : WideString;
    Fid_caixa : Integer;
    Fid_produto : WideString;
    Fnome_produto : WideString;
    Fid_grupo : Integer;
    Fid_fornecedor : Integer;
    Funidade : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fst : WideString;
    Ficms : Double;
    Fvl_icms : Double;
    Fcancelada : WideString;
    Ftransmitida : WideString;
    Fcozinha : WideString;
    Fimprimiu : WideString;
    Fobservacao : WideString;
    Fcopa : WideString;
    Fqtd_devolvida : Double;
    Fcartao : WideString;
    Fbar : WideString;
    Fid_vendedor : Integer;
    Fclick : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_mesa(const Value: Integer);
    procedure Setmesa(const Value: WideString);
    procedure Setitem(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setcupom(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_produto(const Value: WideString);
    procedure Setnome_produto(const Value: WideString);
    procedure Setid_grupo(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setunidade(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setst(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Settransmitida(const Value: WideString);
    procedure Setcozinha(const Value: WideString);
    procedure Setimprimiu(const Value: WideString);
    procedure Setobservacao(const Value: WideString);
    procedure Setcopa(const Value: WideString);
    procedure Setqtd_devolvida(const Value: Double);
    procedure Setcartao(const Value: WideString);
    procedure Setbar(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setclick(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_mesa     : Integer read Fid_mesa write Setid_mesa;
    property mesa     : WideString read Fmesa write Setmesa;
    property item     : Integer read Fitem write Setitem;
    property data     : TDateTime read Fdata write Setdata;
    property cupom     : WideString read Fcupom write Setcupom;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_produto     : WideString read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property unidade     : WideString read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property st     : WideString read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property transmitida     : WideString read Ftransmitida write Settransmitida;
    property cozinha     : WideString read Fcozinha write Setcozinha;
    property imprimiu     : WideString read Fimprimiu write Setimprimiu;
    property observacao     : WideString read Fobservacao write Setobservacao;
    property copa     : WideString read Fcopa write Setcopa;
    property qtd_devolvida     : Double read Fqtd_devolvida write Setqtd_devolvida;
    property cartao     : WideString read Fcartao write Setcartao;
    property bar     : WideString read Fbar write Setbar;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property click     : WideString read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesahaver.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesahaver) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesahaver(Model).id;
Self.Fid_mesa         := TModelERPmesahaver(Model).id_mesa;
Self.Fmesa         := TModelERPmesahaver(Model).mesa;
Self.Fitem         := TModelERPmesahaver(Model).item;
Self.Fdata         := TModelERPmesahaver(Model).data;
Self.Fcupom         := TModelERPmesahaver(Model).cupom;
Self.Fid_caixa         := TModelERPmesahaver(Model).id_caixa;
Self.Fid_produto         := TModelERPmesahaver(Model).id_produto;
Self.Fnome_produto         := TModelERPmesahaver(Model).nome_produto;
Self.Fid_grupo         := TModelERPmesahaver(Model).id_grupo;
Self.Fid_fornecedor         := TModelERPmesahaver(Model).id_fornecedor;
Self.Funidade         := TModelERPmesahaver(Model).unidade;
Self.Fquantidade         := TModelERPmesahaver(Model).quantidade;
Self.Fvl_unitario         := TModelERPmesahaver(Model).vl_unitario;
Self.Fvl_desconto         := TModelERPmesahaver(Model).vl_desconto;
Self.Fvl_total         := TModelERPmesahaver(Model).vl_total;
Self.Fst         := TModelERPmesahaver(Model).st;
Self.Ficms         := TModelERPmesahaver(Model).icms;
Self.Fvl_icms         := TModelERPmesahaver(Model).vl_icms;
Self.Fcancelada         := TModelERPmesahaver(Model).cancelada;
Self.Ftransmitida         := TModelERPmesahaver(Model).transmitida;
Self.Fcozinha         := TModelERPmesahaver(Model).cozinha;
Self.Fimprimiu         := TModelERPmesahaver(Model).imprimiu;
Self.Fobservacao         := TModelERPmesahaver(Model).observacao;
Self.Fcopa         := TModelERPmesahaver(Model).copa;
Self.Fqtd_devolvida         := TModelERPmesahaver(Model).qtd_devolvida;
Self.Fcartao         := TModelERPmesahaver(Model).cartao;
Self.Fbar         := TModelERPmesahaver(Model).bar;
Self.Fid_vendedor         := TModelERPmesahaver(Model).id_vendedor;
Self.Fclick         := TModelERPmesahaver(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesahaver.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesahaver.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesahaver.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesahaver.Setid_mesa(const Value: Boolean);   
begin                
  Fid_mesa := Value;   
end;                 

procedure TModelERPmesahaver.Setmesa(const Value: Boolean);   
begin                
  Fmesa := Value;   
end;                 

procedure TModelERPmesahaver.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPmesahaver.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmesahaver.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPmesahaver.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPmesahaver.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPmesahaver.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPmesahaver.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPmesahaver.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPmesahaver.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPmesahaver.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPmesahaver.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPmesahaver.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPmesahaver.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPmesahaver.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPmesahaver.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPmesahaver.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPmesahaver.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPmesahaver.Settransmitida(const Value: Boolean);   
begin                
  Ftransmitida := Value;   
end;                 

procedure TModelERPmesahaver.Setcozinha(const Value: Boolean);   
begin                
  Fcozinha := Value;   
end;                 

procedure TModelERPmesahaver.Setimprimiu(const Value: Boolean);   
begin                
  Fimprimiu := Value;   
end;                 

procedure TModelERPmesahaver.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPmesahaver.Setcopa(const Value: Boolean);   
begin                
  Fcopa := Value;   
end;                 

procedure TModelERPmesahaver.Setqtd_devolvida(const Value: Boolean);   
begin                
  Fqtd_devolvida := Value;   
end;                 

procedure TModelERPmesahaver.Setcartao(const Value: Boolean);   
begin                
  Fcartao := Value;   
end;                 

procedure TModelERPmesahaver.Setbar(const Value: Boolean);   
begin                
  Fbar := Value;   
end;                 

procedure TModelERPmesahaver.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPmesahaver.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
