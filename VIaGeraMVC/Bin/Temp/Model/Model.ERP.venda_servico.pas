unit Model.ERP.venda_notas_canceladas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendanotascanceladas = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fdata : TDateTime;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fid_funcionario : Integer;
    Fid_vendedor : Integer;
    Fvl_comissao_vendedor : Double;
    Fvl_desconto : Double;
    Fdevolucao : indefinido;
    Fnro_celular : indefinido;
    Funidade : indefinido;
    Fiss : Double;
    Fvl_custo : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setdata(const Value: TDateTime);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setvl_comissao_vendedor(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setdevolucao(const Value: indefinido);
    procedure Setnro_celular(const Value: indefinido);
    procedure Setunidade(const Value: indefinido);
    procedure Setiss(const Value: Double);
    procedure Setvl_custo(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property data     : TDateTime read Fdata write Setdata;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property vl_comissao_vendedor     : Double read Fvl_comissao_vendedor write Setvl_comissao_vendedor;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property devolucao     : indefinido read Fdevolucao write Setdevolucao;
    property nro_celular     : indefinido read Fnro_celular write Setnro_celular;
    property unidade     : indefinido read Funidade write Setunidade;
    property iss     : Double read Fiss write Setiss;
    property vl_custo     : Double read Fvl_custo write Setvl_custo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendanotascanceladas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendanotascanceladas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendanotascanceladas(Model).id;
Self.Fid_venda         := TModelERPvendanotascanceladas(Model).id_venda;
Self.Fid_empresa         := TModelERPvendanotascanceladas(Model).id_empresa;
Self.Fnome         := TModelERPvendanotascanceladas(Model).nome;
Self.Fdata         := TModelERPvendanotascanceladas(Model).data;
Self.Fquantidade         := TModelERPvendanotascanceladas(Model).quantidade;
Self.Fvl_unitario         := TModelERPvendanotascanceladas(Model).vl_unitario;
Self.Fvl_total         := TModelERPvendanotascanceladas(Model).vl_total;
Self.Fid_funcionario         := TModelERPvendanotascanceladas(Model).id_funcionario;
Self.Fid_vendedor         := TModelERPvendanotascanceladas(Model).id_vendedor;
Self.Fvl_comissao_vendedor         := TModelERPvendanotascanceladas(Model).vl_comissao_vendedor;
Self.Fvl_desconto         := TModelERPvendanotascanceladas(Model).vl_desconto;
Self.Fdevolucao         := TModelERPvendanotascanceladas(Model).devolucao;
Self.Fnro_celular         := TModelERPvendanotascanceladas(Model).nro_celular;
Self.Funidade         := TModelERPvendanotascanceladas(Model).unidade;
Self.Fiss         := TModelERPvendanotascanceladas(Model).iss;
Self.Fvl_custo         := TModelERPvendanotascanceladas(Model).vl_custo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendanotascanceladas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendanotascanceladas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendanotascanceladas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setvl_comissao_vendedor(const Value: Boolean);   
begin                
  Fvl_comissao_vendedor := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setnro_celular(const Value: Boolean);   
begin                
  Fnro_celular := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setiss(const Value: Boolean);   
begin                
  Fiss := Value;   
end;                 

procedure TModelERPvendanotascanceladas.Setvl_custo(const Value: Boolean);   
begin                
  Fvl_custo := Value;   
end;                 


end.
