unit Model.ERP.comissao_os;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaoos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fid_indicador : Integer;
    Fdata : TDateTime;
    Fnome_servico : WideString;
    Fquntidade : Integer;
    Fvalor_unitario : Double;
    Ftotal_servico : Double;
    Fporcentagem_comissao : Double;
    Fvalor_comissao : Double;
    Fpago : WideString;
    Fclik : Boolean;
    Fid_funcionario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_indicador(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setnome_servico(const Value: WideString);
    procedure Setquntidade(const Value: Integer);
    procedure Setvalor_unitario(const Value: Double);
    procedure Settotal_servico(const Value: Double);
    procedure Setporcentagem_comissao(const Value: Double);
    procedure Setvalor_comissao(const Value: Double);
    procedure Setpago(const Value: WideString);
    procedure Setclik(const Value: Boolean);
    procedure Setid_funcionario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_indicador     : Integer read Fid_indicador write Setid_indicador;
    property data     : TDateTime read Fdata write Setdata;
    property nome_servico     : WideString read Fnome_servico write Setnome_servico;
    property quntidade     : Integer read Fquntidade write Setquntidade;
    property valor_unitario     : Double read Fvalor_unitario write Setvalor_unitario;
    property total_servico     : Double read Ftotal_servico write Settotal_servico;
    property porcentagem_comissao     : Double read Fporcentagem_comissao write Setporcentagem_comissao;
    property valor_comissao     : Double read Fvalor_comissao write Setvalor_comissao;
    property pago     : WideString read Fpago write Setpago;
    property clik     : Boolean read Fclik write Setclik;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaoos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaoos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaoos(Model).id;
Self.Fid_empresa         := TModelERPcomissaoos(Model).id_empresa;
Self.Fid_os         := TModelERPcomissaoos(Model).id_os;
Self.Fid_indicador         := TModelERPcomissaoos(Model).id_indicador;
Self.Fdata         := TModelERPcomissaoos(Model).data;
Self.Fnome_servico         := TModelERPcomissaoos(Model).nome_servico;
Self.Fquntidade         := TModelERPcomissaoos(Model).quntidade;
Self.Fvalor_unitario         := TModelERPcomissaoos(Model).valor_unitario;
Self.Ftotal_servico         := TModelERPcomissaoos(Model).total_servico;
Self.Fporcentagem_comissao         := TModelERPcomissaoos(Model).porcentagem_comissao;
Self.Fvalor_comissao         := TModelERPcomissaoos(Model).valor_comissao;
Self.Fpago         := TModelERPcomissaoos(Model).pago;
Self.Fclik         := TModelERPcomissaoos(Model).clik;
Self.Fid_funcionario         := TModelERPcomissaoos(Model).id_funcionario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaoos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaoos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaoos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaoos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaoos.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPcomissaoos.Setid_indicador(const Value: Boolean);   
begin                
  Fid_indicador := Value;   
end;                 

procedure TModelERPcomissaoos.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcomissaoos.Setnome_servico(const Value: Boolean);   
begin                
  Fnome_servico := Value;   
end;                 

procedure TModelERPcomissaoos.Setquntidade(const Value: Boolean);   
begin                
  Fquntidade := Value;   
end;                 

procedure TModelERPcomissaoos.Setvalor_unitario(const Value: Boolean);   
begin                
  Fvalor_unitario := Value;   
end;                 

procedure TModelERPcomissaoos.Settotal_servico(const Value: Boolean);   
begin                
  Ftotal_servico := Value;   
end;                 

procedure TModelERPcomissaoos.Setporcentagem_comissao(const Value: Boolean);   
begin                
  Fporcentagem_comissao := Value;   
end;                 

procedure TModelERPcomissaoos.Setvalor_comissao(const Value: Boolean);   
begin                
  Fvalor_comissao := Value;   
end;                 

procedure TModelERPcomissaoos.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPcomissaoos.Setclik(const Value: Boolean);   
begin                
  Fclik := Value;   
end;                 

procedure TModelERPcomissaoos.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 


end.
