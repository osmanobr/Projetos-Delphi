unit Model.ERP.orcamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPorcamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_forma : Integer;
    Fid_vendedor : Integer;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fobservacao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setobservacao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property observacao     : indefinido read Fobservacao write Setobservacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPorcamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPorcamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPorcamento(Model).id;
Self.Fid_empresa         := TModelERPorcamento(Model).id_empresa;
Self.Fdata         := TModelERPorcamento(Model).data;
Self.Fid_usuario         := TModelERPorcamento(Model).id_usuario;
Self.Fid_cliente         := TModelERPorcamento(Model).id_cliente;
Self.Fnome_cliente         := TModelERPorcamento(Model).nome_cliente;
Self.Fid_forma         := TModelERPorcamento(Model).id_forma;
Self.Fid_vendedor         := TModelERPorcamento(Model).id_vendedor;
Self.Fvl_produto         := TModelERPorcamento(Model).vl_produto;
Self.Fvl_servico         := TModelERPorcamento(Model).vl_servico;
Self.Fvl_desconto         := TModelERPorcamento(Model).vl_desconto;
Self.Fvl_total         := TModelERPorcamento(Model).vl_total;
Self.Fobservacao         := TModelERPorcamento(Model).observacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPorcamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPorcamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPorcamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPorcamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPorcamento.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPorcamento.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPorcamento.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPorcamento.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPorcamento.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPorcamento.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPorcamento.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPorcamento.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPorcamento.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPorcamento.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPorcamento.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 


end.
