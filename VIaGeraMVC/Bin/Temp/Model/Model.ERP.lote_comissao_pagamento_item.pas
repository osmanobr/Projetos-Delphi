unit Model.ERP.lote_comissao_pagamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlotecomissaopagamento = class(TModelBase)

private
    Fid : Integer;
    Fid_lote_comissao_pagamento : Integer;
    Fid_venda_item : Integer;
    Fid_venda_servico : Integer;
    Fid_devolucao_item : Integer;
    Findice_utilizado : WideString;
    Fporcentagem_comissao : Double;
    Fvl_total : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_lote_comissao_pagamento(const Value: Integer);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setid_venda_servico(const Value: Integer);
    procedure Setid_devolucao_item(const Value: Integer);
    procedure Setindice_utilizado(const Value: WideString);
    procedure Setporcentagem_comissao(const Value: Double);
    procedure Setvl_total(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_lote_comissao_pagamento     : Integer read Fid_lote_comissao_pagamento write Setid_lote_comissao_pagamento;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property id_venda_servico     : Integer read Fid_venda_servico write Setid_venda_servico;
    property id_devolucao_item     : Integer read Fid_devolucao_item write Setid_devolucao_item;
    property indice_utilizado     : WideString read Findice_utilizado write Setindice_utilizado;
    property porcentagem_comissao     : Double read Fporcentagem_comissao write Setporcentagem_comissao;
    property vl_total     : Double read Fvl_total write Setvl_total;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlotecomissaopagamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlotecomissaopagamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlotecomissaopagamento(Model).id;
Self.Fid_lote_comissao_pagamento         := TModelERPlotecomissaopagamento(Model).id_lote_comissao_pagamento;
Self.Fid_venda_item         := TModelERPlotecomissaopagamento(Model).id_venda_item;
Self.Fid_venda_servico         := TModelERPlotecomissaopagamento(Model).id_venda_servico;
Self.Fid_devolucao_item         := TModelERPlotecomissaopagamento(Model).id_devolucao_item;
Self.Findice_utilizado         := TModelERPlotecomissaopagamento(Model).indice_utilizado;
Self.Fporcentagem_comissao         := TModelERPlotecomissaopagamento(Model).porcentagem_comissao;
Self.Fvl_total         := TModelERPlotecomissaopagamento(Model).vl_total;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlotecomissaopagamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlotecomissaopagamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlotecomissaopagamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setid_lote_comissao_pagamento(const Value: Boolean);   
begin                
  Fid_lote_comissao_pagamento := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setid_venda_servico(const Value: Boolean);   
begin                
  Fid_venda_servico := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setid_devolucao_item(const Value: Boolean);   
begin                
  Fid_devolucao_item := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setindice_utilizado(const Value: Boolean);   
begin                
  Findice_utilizado := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setporcentagem_comissao(const Value: Boolean);   
begin                
  Fporcentagem_comissao := Value;   
end;                 

procedure TModelERPlotecomissaopagamento.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 


end.
