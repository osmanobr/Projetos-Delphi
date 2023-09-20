unit Model.ERP.subgrupo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPsubgrupo = class(TModelBase)

private
    Fid : Integer;
    Fnome : indefinido;
    Fendereco : indefinido;
    Fbairro : indefinido;
    Fid_cidade : Integer;
    Fuf : indefinido;
    Fcep : indefinido;
    Fcpf : indefinido;
    Ffone : indefinido;
    Fcelular : indefinido;
    Ffax : indefinido;
    Fdesconto : Double;
    Fcomissao_avista : Double;
    Fcomissao_aprazo : Double;
    Fcomissao_servico : Double;
    Fdata_nasc : TDateTime;
    Fdata_admi : TDateTime;
    Fdata_demi : TDateTime;
    Fsalario : Double;
    Frg : indefinido;
    Fcart_trabalho : indefinido;
    Ftitulo : indefinido;
    Fescolaridade : indefinido;
    Fobs : indefinido;
    Fclick : Boolean;
    Ftipo : indefinido;
    Fcnpj : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setendereco(const Value: indefinido);
    procedure Setbairro(const Value: indefinido);
    procedure Setid_cidade(const Value: Integer);
    procedure Setuf(const Value: indefinido);
    procedure Setcep(const Value: indefinido);
    procedure Setcpf(const Value: indefinido);
    procedure Setfone(const Value: indefinido);
    procedure Setcelular(const Value: indefinido);
    procedure Setfax(const Value: indefinido);
    procedure Setdesconto(const Value: Double);
    procedure Setcomissao_avista(const Value: Double);
    procedure Setcomissao_aprazo(const Value: Double);
    procedure Setcomissao_servico(const Value: Double);
    procedure Setdata_nasc(const Value: TDateTime);
    procedure Setdata_admi(const Value: TDateTime);
    procedure Setdata_demi(const Value: TDateTime);
    procedure Setsalario(const Value: Double);
    procedure Setrg(const Value: indefinido);
    procedure Setcart_trabalho(const Value: indefinido);
    procedure Settitulo(const Value: indefinido);
    procedure Setescolaridade(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Settipo(const Value: indefinido);
    procedure Setcnpj(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : indefinido read Fnome write Setnome;
    property endereco     : indefinido read Fendereco write Setendereco;
    property bairro     : indefinido read Fbairro write Setbairro;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property uf     : indefinido read Fuf write Setuf;
    property cep     : indefinido read Fcep write Setcep;
    property cpf     : indefinido read Fcpf write Setcpf;
    property fone     : indefinido read Ffone write Setfone;
    property celular     : indefinido read Fcelular write Setcelular;
    property fax     : indefinido read Ffax write Setfax;
    property desconto     : Double read Fdesconto write Setdesconto;
    property comissao_avista     : Double read Fcomissao_avista write Setcomissao_avista;
    property comissao_aprazo     : Double read Fcomissao_aprazo write Setcomissao_aprazo;
    property comissao_servico     : Double read Fcomissao_servico write Setcomissao_servico;
    property data_nasc     : TDateTime read Fdata_nasc write Setdata_nasc;
    property data_admi     : TDateTime read Fdata_admi write Setdata_admi;
    property data_demi     : TDateTime read Fdata_demi write Setdata_demi;
    property salario     : Double read Fsalario write Setsalario;
    property rg     : indefinido read Frg write Setrg;
    property cart_trabalho     : indefinido read Fcart_trabalho write Setcart_trabalho;
    property titulo     : indefinido read Ftitulo write Settitulo;
    property escolaridade     : indefinido read Fescolaridade write Setescolaridade;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property tipo     : indefinido read Ftipo write Settipo;
    property cnpj     : WideString read Fcnpj write Setcnpj;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPsubgrupo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPsubgrupo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPsubgrupo(Model).id;
Self.Fnome         := TModelERPsubgrupo(Model).nome;
Self.Fendereco         := TModelERPsubgrupo(Model).endereco;
Self.Fbairro         := TModelERPsubgrupo(Model).bairro;
Self.Fid_cidade         := TModelERPsubgrupo(Model).id_cidade;
Self.Fuf         := TModelERPsubgrupo(Model).uf;
Self.Fcep         := TModelERPsubgrupo(Model).cep;
Self.Fcpf         := TModelERPsubgrupo(Model).cpf;
Self.Ffone         := TModelERPsubgrupo(Model).fone;
Self.Fcelular         := TModelERPsubgrupo(Model).celular;
Self.Ffax         := TModelERPsubgrupo(Model).fax;
Self.Fdesconto         := TModelERPsubgrupo(Model).desconto;
Self.Fcomissao_avista         := TModelERPsubgrupo(Model).comissao_avista;
Self.Fcomissao_aprazo         := TModelERPsubgrupo(Model).comissao_aprazo;
Self.Fcomissao_servico         := TModelERPsubgrupo(Model).comissao_servico;
Self.Fdata_nasc         := TModelERPsubgrupo(Model).data_nasc;
Self.Fdata_admi         := TModelERPsubgrupo(Model).data_admi;
Self.Fdata_demi         := TModelERPsubgrupo(Model).data_demi;
Self.Fsalario         := TModelERPsubgrupo(Model).salario;
Self.Frg         := TModelERPsubgrupo(Model).rg;
Self.Fcart_trabalho         := TModelERPsubgrupo(Model).cart_trabalho;
Self.Ftitulo         := TModelERPsubgrupo(Model).titulo;
Self.Fescolaridade         := TModelERPsubgrupo(Model).escolaridade;
Self.Fobs         := TModelERPsubgrupo(Model).obs;
Self.Fclick         := TModelERPsubgrupo(Model).click;
Self.Ftipo         := TModelERPsubgrupo(Model).tipo;
Self.Fcnpj         := TModelERPsubgrupo(Model).cnpj;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPsubgrupo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPsubgrupo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPsubgrupo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPsubgrupo.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPsubgrupo.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPsubgrupo.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPsubgrupo.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPsubgrupo.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPsubgrupo.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPsubgrupo.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPsubgrupo.Setfone(const Value: Boolean);   
begin                
  Ffone := Value;   
end;                 

procedure TModelERPsubgrupo.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPsubgrupo.Setfax(const Value: Boolean);   
begin                
  Ffax := Value;   
end;                 

procedure TModelERPsubgrupo.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPsubgrupo.Setcomissao_avista(const Value: Boolean);   
begin                
  Fcomissao_avista := Value;   
end;                 

procedure TModelERPsubgrupo.Setcomissao_aprazo(const Value: Boolean);   
begin                
  Fcomissao_aprazo := Value;   
end;                 

procedure TModelERPsubgrupo.Setcomissao_servico(const Value: Boolean);   
begin                
  Fcomissao_servico := Value;   
end;                 

procedure TModelERPsubgrupo.Setdata_nasc(const Value: Boolean);   
begin                
  Fdata_nasc := Value;   
end;                 

procedure TModelERPsubgrupo.Setdata_admi(const Value: Boolean);   
begin                
  Fdata_admi := Value;   
end;                 

procedure TModelERPsubgrupo.Setdata_demi(const Value: Boolean);   
begin                
  Fdata_demi := Value;   
end;                 

procedure TModelERPsubgrupo.Setsalario(const Value: Boolean);   
begin                
  Fsalario := Value;   
end;                 

procedure TModelERPsubgrupo.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPsubgrupo.Setcart_trabalho(const Value: Boolean);   
begin                
  Fcart_trabalho := Value;   
end;                 

procedure TModelERPsubgrupo.Settitulo(const Value: Boolean);   
begin                
  Ftitulo := Value;   
end;                 

procedure TModelERPsubgrupo.Setescolaridade(const Value: Boolean);   
begin                
  Fescolaridade := Value;   
end;                 

procedure TModelERPsubgrupo.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPsubgrupo.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPsubgrupo.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPsubgrupo.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 


end.
