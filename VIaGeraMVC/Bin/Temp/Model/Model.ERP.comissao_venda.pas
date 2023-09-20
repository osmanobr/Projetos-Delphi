unit Model.ERP.comissao_os_servico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaoosservico = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fpercentual_desconto : Double;
    Fvl_servico : Double;
    Fvl_produto : Double;
    Fvl_total : Double;
    Fvl_comissao : Double;
    Fcancelada : WideString;
    Favistaaprazo : WideString;
    Foperacao : WideString;
    Fcomissao : WideString;
    Fpago : WideString;
    Fclick : Boolean;
    Fid_supervisor : Integer;
    Fvl_promocao : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setdocumento(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setpercentual_desconto(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setvl_comissao(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Setavistaaprazo(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setcomissao(const Value: WideString);
    procedure Setpago(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setid_supervisor(const Value: Integer);
    procedure Setvl_promocao(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_os     : Integer read Fid_os write Setid_os;
    property documento     : WideString read Fdocumento write Setdocumento;
    property data     : TDateTime read Fdata write Setdata;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property percentual_desconto     : Double read Fpercentual_desconto write Setpercentual_desconto;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property vl_comissao     : Double read Fvl_comissao write Setvl_comissao;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property avistaaprazo     : WideString read Favistaaprazo write Setavistaaprazo;
    property operacao     : WideString read Foperacao write Setoperacao;
    property comissao     : WideString read Fcomissao write Setcomissao;
    property pago     : WideString read Fpago write Setpago;
    property click     : Boolean read Fclick write Setclick;
    property id_supervisor     : Integer read Fid_supervisor write Setid_supervisor;
    property vl_promocao     : Double read Fvl_promocao write Setvl_promocao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaoosservico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaoosservico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaoosservico(Model).id;
Self.Fid_empresa         := TModelERPcomissaoosservico(Model).id_empresa;
Self.Fid_pedido         := TModelERPcomissaoosservico(Model).id_pedido;
Self.Fid_os         := TModelERPcomissaoosservico(Model).id_os;
Self.Fdocumento         := TModelERPcomissaoosservico(Model).documento;
Self.Fdata         := TModelERPcomissaoosservico(Model).data;
Self.Fid_vendedor         := TModelERPcomissaoosservico(Model).id_vendedor;
Self.Fid_cliente         := TModelERPcomissaoosservico(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcomissaoosservico(Model).nome_cliente;
Self.Fid_forma         := TModelERPcomissaoosservico(Model).id_forma;
Self.Fid_caixa         := TModelERPcomissaoosservico(Model).id_caixa;
Self.Fpercentual_desconto         := TModelERPcomissaoosservico(Model).percentual_desconto;
Self.Fvl_servico         := TModelERPcomissaoosservico(Model).vl_servico;
Self.Fvl_produto         := TModelERPcomissaoosservico(Model).vl_produto;
Self.Fvl_total         := TModelERPcomissaoosservico(Model).vl_total;
Self.Fvl_comissao         := TModelERPcomissaoosservico(Model).vl_comissao;
Self.Fcancelada         := TModelERPcomissaoosservico(Model).cancelada;
Self.Favistaaprazo         := TModelERPcomissaoosservico(Model).avistaaprazo;
Self.Foperacao         := TModelERPcomissaoosservico(Model).operacao;
Self.Fcomissao         := TModelERPcomissaoosservico(Model).comissao;
Self.Fpago         := TModelERPcomissaoosservico(Model).pago;
Self.Fclick         := TModelERPcomissaoosservico(Model).click;
Self.Fid_supervisor         := TModelERPcomissaoosservico(Model).id_supervisor;
Self.Fvl_promocao         := TModelERPcomissaoosservico(Model).vl_promocao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaoosservico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaoosservico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaoosservico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setvl_comissao(const Value: Boolean);   
begin                
  Fvl_comissao := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setavistaaprazo(const Value: Boolean);   
begin                
  Favistaaprazo := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setid_supervisor(const Value: Boolean);   
begin                
  Fid_supervisor := Value;   
end;                 

procedure TModelERPcomissaoosservico.Setvl_promocao(const Value: Boolean);   
begin                
  Fvl_promocao := Value;   
end;                 


end.
