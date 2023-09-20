unit Model.ERP.venda_xml_nfe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaxmlnfe = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
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
    Fid_supervisor : Integer;
    Ffpb_senha : indefinido;
    Fativo : indefinido;
    Fcomissao_financeiro : Double;
    Fmeta : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
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
    procedure Setid_supervisor(const Value: Integer);
    procedure Setfpb_senha(const Value: indefinido);
    procedure Setativo(const Value: indefinido);
    procedure Setcomissao_financeiro(const Value: Double);
    procedure Setmeta(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
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
    property id_supervisor     : Integer read Fid_supervisor write Setid_supervisor;
    property fpb_senha     : indefinido read Ffpb_senha write Setfpb_senha;
    property ativo     : indefinido read Fativo write Setativo;
    property comissao_financeiro     : Double read Fcomissao_financeiro write Setcomissao_financeiro;
    property meta     : Double read Fmeta write Setmeta;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaxmlnfe.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaxmlnfe) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaxmlnfe(Model).id;
Self.Fid_empresa         := TModelERPvendaxmlnfe(Model).id_empresa;
Self.Fnome         := TModelERPvendaxmlnfe(Model).nome;
Self.Fendereco         := TModelERPvendaxmlnfe(Model).endereco;
Self.Fbairro         := TModelERPvendaxmlnfe(Model).bairro;
Self.Fid_cidade         := TModelERPvendaxmlnfe(Model).id_cidade;
Self.Fuf         := TModelERPvendaxmlnfe(Model).uf;
Self.Fcep         := TModelERPvendaxmlnfe(Model).cep;
Self.Fcpf         := TModelERPvendaxmlnfe(Model).cpf;
Self.Ffone         := TModelERPvendaxmlnfe(Model).fone;
Self.Fcelular         := TModelERPvendaxmlnfe(Model).celular;
Self.Ffax         := TModelERPvendaxmlnfe(Model).fax;
Self.Fdesconto         := TModelERPvendaxmlnfe(Model).desconto;
Self.Fcomissao_avista         := TModelERPvendaxmlnfe(Model).comissao_avista;
Self.Fcomissao_aprazo         := TModelERPvendaxmlnfe(Model).comissao_aprazo;
Self.Fcomissao_servico         := TModelERPvendaxmlnfe(Model).comissao_servico;
Self.Fdata_nasc         := TModelERPvendaxmlnfe(Model).data_nasc;
Self.Fdata_admi         := TModelERPvendaxmlnfe(Model).data_admi;
Self.Fdata_demi         := TModelERPvendaxmlnfe(Model).data_demi;
Self.Fsalario         := TModelERPvendaxmlnfe(Model).salario;
Self.Frg         := TModelERPvendaxmlnfe(Model).rg;
Self.Fcart_trabalho         := TModelERPvendaxmlnfe(Model).cart_trabalho;
Self.Ftitulo         := TModelERPvendaxmlnfe(Model).titulo;
Self.Fescolaridade         := TModelERPvendaxmlnfe(Model).escolaridade;
Self.Fobs         := TModelERPvendaxmlnfe(Model).obs;
Self.Fclick         := TModelERPvendaxmlnfe(Model).click;
Self.Ftipo         := TModelERPvendaxmlnfe(Model).tipo;
Self.Fid_supervisor         := TModelERPvendaxmlnfe(Model).id_supervisor;
Self.Ffpb_senha         := TModelERPvendaxmlnfe(Model).fpb_senha;
Self.Fativo         := TModelERPvendaxmlnfe(Model).ativo;
Self.Fcomissao_financeiro         := TModelERPvendaxmlnfe(Model).comissao_financeiro;
Self.Fmeta         := TModelERPvendaxmlnfe(Model).meta;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaxmlnfe.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaxmlnfe.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaxmlnfe.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setfone(const Value: Boolean);   
begin                
  Ffone := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setfax(const Value: Boolean);   
begin                
  Ffax := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcomissao_avista(const Value: Boolean);   
begin                
  Fcomissao_avista := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcomissao_aprazo(const Value: Boolean);   
begin                
  Fcomissao_aprazo := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcomissao_servico(const Value: Boolean);   
begin                
  Fcomissao_servico := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setdata_nasc(const Value: Boolean);   
begin                
  Fdata_nasc := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setdata_admi(const Value: Boolean);   
begin                
  Fdata_admi := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setdata_demi(const Value: Boolean);   
begin                
  Fdata_demi := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setsalario(const Value: Boolean);   
begin                
  Fsalario := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcart_trabalho(const Value: Boolean);   
begin                
  Fcart_trabalho := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Settitulo(const Value: Boolean);   
begin                
  Ftitulo := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setescolaridade(const Value: Boolean);   
begin                
  Fescolaridade := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setid_supervisor(const Value: Boolean);   
begin                
  Fid_supervisor := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setfpb_senha(const Value: Boolean);   
begin                
  Ffpb_senha := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setcomissao_financeiro(const Value: Boolean);   
begin                
  Fcomissao_financeiro := Value;   
end;                 

procedure TModelERPvendaxmlnfe.Setmeta(const Value: Boolean);   
begin                
  Fmeta := Value;   
end;                 


end.
