unit Model.ERP.estoque_insumo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestoqueinsumo = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_produto : Integer;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;
    Festoque : WideString;
    Fchave_nfe : WideString;
    Fdatahora : indefinido;
    Ftipo : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fid_fornecedor : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);
    procedure Setestoque(const Value: WideString);
    procedure Setchave_nfe(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);
    procedure Settipo(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;
    property estoque     : WideString read Festoque write Setestoque;
    property chave_nfe     : WideString read Fchave_nfe write Setchave_nfe;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property tipo     : WideString read Ftipo write Settipo;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestoqueinsumo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestoqueinsumo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestoqueinsumo(Model).id;
Self.Fid_cliente         := TModelERPestoqueinsumo(Model).id_cliente;
Self.Fid_produto         := TModelERPestoqueinsumo(Model).id_produto;
Self.Fquantidade_empresa_terceiro         := TModelERPestoqueinsumo(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPestoqueinsumo(Model).quantidade_terceiro_empresa;
Self.Festoque         := TModelERPestoqueinsumo(Model).estoque;
Self.Fchave_nfe         := TModelERPestoqueinsumo(Model).chave_nfe;
Self.Fdatahora         := TModelERPestoqueinsumo(Model).datahora;
Self.Ftipo         := TModelERPestoqueinsumo(Model).tipo;
Self.Foperacao         := TModelERPestoqueinsumo(Model).operacao;
Self.Fid_operacao         := TModelERPestoqueinsumo(Model).id_operacao;
Self.Fid_fornecedor         := TModelERPestoqueinsumo(Model).id_fornecedor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestoqueinsumo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestoqueinsumo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestoqueinsumo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setchave_nfe(const Value: Boolean);   
begin                
  Fchave_nfe := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPestoqueinsumo.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPestoqueinsumo.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 


end.
