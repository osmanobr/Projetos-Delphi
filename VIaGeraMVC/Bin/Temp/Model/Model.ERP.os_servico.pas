unit Model.ERP.os_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPositem = class(TModelBase)

private
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fdata : TDateTime;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fid_funcionario : Integer;
    Fid_vendedor : Integer;
    Fvl_comissao_vendedor : Double;
    Funidade : indefinido;
    Fiss : Double;
    Fid_indicador : Integer;
    Fid_servico : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setdata(const Value: TDateTime);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setvl_comissao_vendedor(const Value: Double);
    procedure Setunidade(const Value: indefinido);
    procedure Setiss(const Value: Double);
    procedure Setid_indicador(const Value: Integer);
    procedure Setid_servico(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property data     : TDateTime read Fdata write Setdata;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property vl_comissao_vendedor     : Double read Fvl_comissao_vendedor write Setvl_comissao_vendedor;
    property unidade     : indefinido read Funidade write Setunidade;
    property iss     : Double read Fiss write Setiss;
    property id_indicador     : Integer read Fid_indicador write Setid_indicador;
    property id_servico     : Integer read Fid_servico write Setid_servico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPositem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPositem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPositem(Model).id;
Self.Fid_os         := TModelERPositem(Model).id_os;
Self.Fid_empresa         := TModelERPositem(Model).id_empresa;
Self.Fnome         := TModelERPositem(Model).nome;
Self.Fdata         := TModelERPositem(Model).data;
Self.Fquantidade         := TModelERPositem(Model).quantidade;
Self.Fvl_unitario         := TModelERPositem(Model).vl_unitario;
Self.Fvl_total         := TModelERPositem(Model).vl_total;
Self.Fid_funcionario         := TModelERPositem(Model).id_funcionario;
Self.Fid_vendedor         := TModelERPositem(Model).id_vendedor;
Self.Fvl_comissao_vendedor         := TModelERPositem(Model).vl_comissao_vendedor;
Self.Funidade         := TModelERPositem(Model).unidade;
Self.Fiss         := TModelERPositem(Model).iss;
Self.Fid_indicador         := TModelERPositem(Model).id_indicador;
Self.Fid_servico         := TModelERPositem(Model).id_servico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPositem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPositem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPositem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPositem.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPositem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPositem.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPositem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPositem.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPositem.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPositem.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPositem.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPositem.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPositem.Setvl_comissao_vendedor(const Value: Boolean);   
begin                
  Fvl_comissao_vendedor := Value;   
end;                 

procedure TModelERPositem.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPositem.Setiss(const Value: Boolean);   
begin                
  Fiss := Value;   
end;                 

procedure TModelERPositem.Setid_indicador(const Value: Boolean);   
begin                
  Fid_indicador := Value;   
end;                 

procedure TModelERPositem.Setid_servico(const Value: Boolean);   
begin                
  Fid_servico := Value;   
end;                 


end.
