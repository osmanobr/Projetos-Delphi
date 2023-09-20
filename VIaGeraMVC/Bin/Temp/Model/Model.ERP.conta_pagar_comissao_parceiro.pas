unit Model.ERP.conta_pagar;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontapagar = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_rec_fixa_comissao : Integer;
    Fdata_baixa_receber : TDateTime;
    Fvalor_recebido : Double;
    Fvalor_comissao : Double;
    Fsituacao : indefinido;
    Fdata_pagamento : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_rec_fixa_comissao(const Value: Integer);
    procedure Setdata_baixa_receber(const Value: TDateTime);
    procedure Setvalor_recebido(const Value: Double);
    procedure Setvalor_comissao(const Value: Double);
    procedure Setsituacao(const Value: indefinido);
    procedure Setdata_pagamento(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_rec_fixa_comissao     : Integer read Fid_rec_fixa_comissao write Setid_rec_fixa_comissao;
    property data_baixa_receber     : TDateTime read Fdata_baixa_receber write Setdata_baixa_receber;
    property valor_recebido     : Double read Fvalor_recebido write Setvalor_recebido;
    property valor_comissao     : Double read Fvalor_comissao write Setvalor_comissao;
    property situacao     : indefinido read Fsituacao write Setsituacao;
    property data_pagamento     : TDateTime read Fdata_pagamento write Setdata_pagamento;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontapagar.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontapagar) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontapagar(Model).id;
Self.Fid_empresa         := TModelERPcontapagar(Model).id_empresa;
Self.Fid_rec_fixa_comissao         := TModelERPcontapagar(Model).id_rec_fixa_comissao;
Self.Fdata_baixa_receber         := TModelERPcontapagar(Model).data_baixa_receber;
Self.Fvalor_recebido         := TModelERPcontapagar(Model).valor_recebido;
Self.Fvalor_comissao         := TModelERPcontapagar(Model).valor_comissao;
Self.Fsituacao         := TModelERPcontapagar(Model).situacao;
Self.Fdata_pagamento         := TModelERPcontapagar(Model).data_pagamento;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontapagar.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontapagar.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontapagar.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontapagar.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontapagar.Setid_rec_fixa_comissao(const Value: Boolean);   
begin                
  Fid_rec_fixa_comissao := Value;   
end;                 

procedure TModelERPcontapagar.Setdata_baixa_receber(const Value: Boolean);   
begin                
  Fdata_baixa_receber := Value;   
end;                 

procedure TModelERPcontapagar.Setvalor_recebido(const Value: Boolean);   
begin                
  Fvalor_recebido := Value;   
end;                 

procedure TModelERPcontapagar.Setvalor_comissao(const Value: Boolean);   
begin                
  Fvalor_comissao := Value;   
end;                 

procedure TModelERPcontapagar.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPcontapagar.Setdata_pagamento(const Value: Boolean);   
begin                
  Fdata_pagamento := Value;   
end;                 


end.
