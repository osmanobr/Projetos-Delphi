unit Model.ERP.comissao_faixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaofaixa = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
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

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
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

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
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

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaofaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaofaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaofaixa(Model).id;
Self.Fid_empresa         := TModelERPcomissaofaixa(Model).id_empresa;
Self.Fid_os         := TModelERPcomissaofaixa(Model).id_os;
Self.Fdocumento         := TModelERPcomissaofaixa(Model).documento;
Self.Fdata         := TModelERPcomissaofaixa(Model).data;
Self.Fid_vendedor         := TModelERPcomissaofaixa(Model).id_vendedor;
Self.Fid_cliente         := TModelERPcomissaofaixa(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcomissaofaixa(Model).nome_cliente;
Self.Fid_forma         := TModelERPcomissaofaixa(Model).id_forma;
Self.Fid_caixa         := TModelERPcomissaofaixa(Model).id_caixa;
Self.Fpercentual_desconto         := TModelERPcomissaofaixa(Model).percentual_desconto;
Self.Fvl_servico         := TModelERPcomissaofaixa(Model).vl_servico;
Self.Fvl_produto         := TModelERPcomissaofaixa(Model).vl_produto;
Self.Fvl_total         := TModelERPcomissaofaixa(Model).vl_total;
Self.Fvl_comissao         := TModelERPcomissaofaixa(Model).vl_comissao;
Self.Fcancelada         := TModelERPcomissaofaixa(Model).cancelada;
Self.Favistaaprazo         := TModelERPcomissaofaixa(Model).avistaaprazo;
Self.Foperacao         := TModelERPcomissaofaixa(Model).operacao;
Self.Fcomissao         := TModelERPcomissaofaixa(Model).comissao;
Self.Fpago         := TModelERPcomissaofaixa(Model).pago;
Self.Fclick         := TModelERPcomissaofaixa(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaofaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaofaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaofaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setpercentual_desconto(const Value: Boolean);   
begin                
  Fpercentual_desconto := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setvl_comissao(const Value: Boolean);   
begin                
  Fvl_comissao := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setavistaaprazo(const Value: Boolean);   
begin                
  Favistaaprazo := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPcomissaofaixa.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
