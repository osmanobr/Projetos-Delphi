unit Model.ERP.equipamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPequipamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_obra : Integer;
    Fid_usuario : Integer;
    Fid_usuario_change : Integer;
    Fnome_cliente : WideString;
    Fnome_obra : WideString;
    Fvalor_produtos : Double;
    Fvalor_servico : Double;
    Fvalor_total : Double;
    Fvalor_produtos_entregue : Double;
    Fvalor_servico_pago : Double;
    Fvalor_produtos_pagos : Double;
    Fquantidade_total : Double;
    Fquantidade_entregue : Double;
    Ffechada : Boolean;
    Fcancelada : Boolean;
    Fvalor_total_pago : Double;
    Fdata : indefinido;
    Fencerrada : Boolean;
    Fformas_pagamento : WideString;
    Fvalor_custo : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_obra(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_usuario_change(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setnome_obra(const Value: WideString);
    procedure Setvalor_produtos(const Value: Double);
    procedure Setvalor_servico(const Value: Double);
    procedure Setvalor_total(const Value: Double);
    procedure Setvalor_produtos_entregue(const Value: Double);
    procedure Setvalor_servico_pago(const Value: Double);
    procedure Setvalor_produtos_pagos(const Value: Double);
    procedure Setquantidade_total(const Value: Double);
    procedure Setquantidade_entregue(const Value: Double);
    procedure Setfechada(const Value: Boolean);
    procedure Setcancelada(const Value: Boolean);
    procedure Setvalor_total_pago(const Value: Double);
    procedure Setdata(const Value: indefinido);
    procedure Setencerrada(const Value: Boolean);
    procedure Setformas_pagamento(const Value: WideString);
    procedure Setvalor_custo(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_obra     : Integer read Fid_obra write Setid_obra;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_usuario_change     : Integer read Fid_usuario_change write Setid_usuario_change;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property nome_obra     : WideString read Fnome_obra write Setnome_obra;
    property valor_produtos     : Double read Fvalor_produtos write Setvalor_produtos;
    property valor_servico     : Double read Fvalor_servico write Setvalor_servico;
    property valor_total     : Double read Fvalor_total write Setvalor_total;
    property valor_produtos_entregue     : Double read Fvalor_produtos_entregue write Setvalor_produtos_entregue;
    property valor_servico_pago     : Double read Fvalor_servico_pago write Setvalor_servico_pago;
    property valor_produtos_pagos     : Double read Fvalor_produtos_pagos write Setvalor_produtos_pagos;
    property quantidade_total     : Double read Fquantidade_total write Setquantidade_total;
    property quantidade_entregue     : Double read Fquantidade_entregue write Setquantidade_entregue;
    property fechada     : Boolean read Ffechada write Setfechada;
    property cancelada     : Boolean read Fcancelada write Setcancelada;
    property valor_total_pago     : Double read Fvalor_total_pago write Setvalor_total_pago;
    property data     : indefinido read Fdata write Setdata;
    property encerrada     : Boolean read Fencerrada write Setencerrada;
    property formas_pagamento     : WideString read Fformas_pagamento write Setformas_pagamento;
    property valor_custo     : Double read Fvalor_custo write Setvalor_custo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPequipamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPequipamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPequipamento(Model).id;
Self.Fid_empresa         := TModelERPequipamento(Model).id_empresa;
Self.Fid_cliente         := TModelERPequipamento(Model).id_cliente;
Self.Fid_obra         := TModelERPequipamento(Model).id_obra;
Self.Fid_usuario         := TModelERPequipamento(Model).id_usuario;
Self.Fid_usuario_change         := TModelERPequipamento(Model).id_usuario_change;
Self.Fnome_cliente         := TModelERPequipamento(Model).nome_cliente;
Self.Fnome_obra         := TModelERPequipamento(Model).nome_obra;
Self.Fvalor_produtos         := TModelERPequipamento(Model).valor_produtos;
Self.Fvalor_servico         := TModelERPequipamento(Model).valor_servico;
Self.Fvalor_total         := TModelERPequipamento(Model).valor_total;
Self.Fvalor_produtos_entregue         := TModelERPequipamento(Model).valor_produtos_entregue;
Self.Fvalor_servico_pago         := TModelERPequipamento(Model).valor_servico_pago;
Self.Fvalor_produtos_pagos         := TModelERPequipamento(Model).valor_produtos_pagos;
Self.Fquantidade_total         := TModelERPequipamento(Model).quantidade_total;
Self.Fquantidade_entregue         := TModelERPequipamento(Model).quantidade_entregue;
Self.Ffechada         := TModelERPequipamento(Model).fechada;
Self.Fcancelada         := TModelERPequipamento(Model).cancelada;
Self.Fvalor_total_pago         := TModelERPequipamento(Model).valor_total_pago;
Self.Fdata         := TModelERPequipamento(Model).data;
Self.Fencerrada         := TModelERPequipamento(Model).encerrada;
Self.Fformas_pagamento         := TModelERPequipamento(Model).formas_pagamento;
Self.Fvalor_custo         := TModelERPequipamento(Model).valor_custo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPequipamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPequipamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPequipamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPequipamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPequipamento.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPequipamento.Setid_obra(const Value: Boolean);   
begin                
  Fid_obra := Value;   
end;                 

procedure TModelERPequipamento.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPequipamento.Setid_usuario_change(const Value: Boolean);   
begin                
  Fid_usuario_change := Value;   
end;                 

procedure TModelERPequipamento.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPequipamento.Setnome_obra(const Value: Boolean);   
begin                
  Fnome_obra := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_produtos(const Value: Boolean);   
begin                
  Fvalor_produtos := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_servico(const Value: Boolean);   
begin                
  Fvalor_servico := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_total(const Value: Boolean);   
begin                
  Fvalor_total := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_produtos_entregue(const Value: Boolean);   
begin                
  Fvalor_produtos_entregue := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_servico_pago(const Value: Boolean);   
begin                
  Fvalor_servico_pago := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_produtos_pagos(const Value: Boolean);   
begin                
  Fvalor_produtos_pagos := Value;   
end;                 

procedure TModelERPequipamento.Setquantidade_total(const Value: Boolean);   
begin                
  Fquantidade_total := Value;   
end;                 

procedure TModelERPequipamento.Setquantidade_entregue(const Value: Boolean);   
begin                
  Fquantidade_entregue := Value;   
end;                 

procedure TModelERPequipamento.Setfechada(const Value: Boolean);   
begin                
  Ffechada := Value;   
end;                 

procedure TModelERPequipamento.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_total_pago(const Value: Boolean);   
begin                
  Fvalor_total_pago := Value;   
end;                 

procedure TModelERPequipamento.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPequipamento.Setencerrada(const Value: Boolean);   
begin                
  Fencerrada := Value;   
end;                 

procedure TModelERPequipamento.Setformas_pagamento(const Value: Boolean);   
begin                
  Fformas_pagamento := Value;   
end;                 

procedure TModelERPequipamento.Setvalor_custo(const Value: Boolean);   
begin                
  Fvalor_custo := Value;   
end;                 


end.
