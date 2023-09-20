unit Model.ERP.empresas_boleto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasboleto = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fmanter_compra_item : Boolean;
    Fnao_aproveitamento_icms_regime_normal : Boolean;
    Fconversao_st : WideString;
    Fmargem_bruta_preco_compra : Boolean;
    Fid_caixa : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setmanter_compra_item(const Value: Boolean);
    procedure Setnao_aproveitamento_icms_regime_normal(const Value: Boolean);
    procedure Setconversao_st(const Value: WideString);
    procedure Setmargem_bruta_preco_compra(const Value: Boolean);
    procedure Setid_caixa(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property manter_compra_item     : Boolean read Fmanter_compra_item write Setmanter_compra_item;
    property nao_aproveitamento_icms_regime_normal     : Boolean read Fnao_aproveitamento_icms_regime_normal write Setnao_aproveitamento_icms_regime_normal;
    property conversao_st     : WideString read Fconversao_st write Setconversao_st;
    property margem_bruta_preco_compra     : Boolean read Fmargem_bruta_preco_compra write Setmargem_bruta_preco_compra;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasboleto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasboleto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasboleto(Model).id;
Self.Fid_empresa         := TModelERPempresasboleto(Model).id_empresa;
Self.Fmanter_compra_item         := TModelERPempresasboleto(Model).manter_compra_item;
Self.Fnao_aproveitamento_icms_regime_normal         := TModelERPempresasboleto(Model).nao_aproveitamento_icms_regime_normal;
Self.Fconversao_st         := TModelERPempresasboleto(Model).conversao_st;
Self.Fmargem_bruta_preco_compra         := TModelERPempresasboleto(Model).margem_bruta_preco_compra;
Self.Fid_caixa         := TModelERPempresasboleto(Model).id_caixa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasboleto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasboleto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasboleto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasboleto.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPempresasboleto.Setmanter_compra_item(const Value: Boolean);   
begin                
  Fmanter_compra_item := Value;   
end;                 

procedure TModelERPempresasboleto.Setnao_aproveitamento_icms_regime_normal(const Value: Boolean);   
begin                
  Fnao_aproveitamento_icms_regime_normal := Value;   
end;                 

procedure TModelERPempresasboleto.Setconversao_st(const Value: Boolean);   
begin                
  Fconversao_st := Value;   
end;                 

procedure TModelERPempresasboleto.Setmargem_bruta_preco_compra(const Value: Boolean);   
begin                
  Fmargem_bruta_preco_compra := Value;   
end;                 

procedure TModelERPempresasboleto.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 


end.
