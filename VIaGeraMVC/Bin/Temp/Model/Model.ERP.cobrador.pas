unit Model.ERP.clientes_spc;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientesspc = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fid_cidade : Integer;
    Fuf : WideString;
    Fcep : WideString;
    Fcpf : WideString;
    Ffone : WideString;
    Fcelular : WideString;
    Ffax : WideString;
    Fdesconto : Double;
    Fcomissao_avista : Double;
    Fdata_nasc : TDateTime;
    Fdata_admi : TDateTime;
    Fdata_demi : TDateTime;
    Fsalario : Double;
    Frg : WideString;
    Fcart_trabalho : WideString;
    Ftitulo : WideString;
    Fescolaridade : WideString;
    Fobs : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setfone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setfax(const Value: WideString);
    procedure Setdesconto(const Value: Double);
    procedure Setcomissao_avista(const Value: Double);
    procedure Setdata_nasc(const Value: TDateTime);
    procedure Setdata_admi(const Value: TDateTime);
    procedure Setdata_demi(const Value: TDateTime);
    procedure Setsalario(const Value: Double);
    procedure Setrg(const Value: WideString);
    procedure Setcart_trabalho(const Value: WideString);
    procedure Settitulo(const Value: WideString);
    procedure Setescolaridade(const Value: WideString);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property uf     : WideString read Fuf write Setuf;
    property cep     : WideString read Fcep write Setcep;
    property cpf     : WideString read Fcpf write Setcpf;
    property fone     : WideString read Ffone write Setfone;
    property celular     : WideString read Fcelular write Setcelular;
    property fax     : WideString read Ffax write Setfax;
    property desconto     : Double read Fdesconto write Setdesconto;
    property comissao_avista     : Double read Fcomissao_avista write Setcomissao_avista;
    property data_nasc     : TDateTime read Fdata_nasc write Setdata_nasc;
    property data_admi     : TDateTime read Fdata_admi write Setdata_admi;
    property data_demi     : TDateTime read Fdata_demi write Setdata_demi;
    property salario     : Double read Fsalario write Setsalario;
    property rg     : WideString read Frg write Setrg;
    property cart_trabalho     : WideString read Fcart_trabalho write Setcart_trabalho;
    property titulo     : WideString read Ftitulo write Settitulo;
    property escolaridade     : WideString read Fescolaridade write Setescolaridade;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientesspc.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientesspc) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientesspc(Model).id;
Self.Fid_empresa         := TModelERPclientesspc(Model).id_empresa;
Self.Fnome         := TModelERPclientesspc(Model).nome;
Self.Fendereco         := TModelERPclientesspc(Model).endereco;
Self.Fbairro         := TModelERPclientesspc(Model).bairro;
Self.Fid_cidade         := TModelERPclientesspc(Model).id_cidade;
Self.Fuf         := TModelERPclientesspc(Model).uf;
Self.Fcep         := TModelERPclientesspc(Model).cep;
Self.Fcpf         := TModelERPclientesspc(Model).cpf;
Self.Ffone         := TModelERPclientesspc(Model).fone;
Self.Fcelular         := TModelERPclientesspc(Model).celular;
Self.Ffax         := TModelERPclientesspc(Model).fax;
Self.Fdesconto         := TModelERPclientesspc(Model).desconto;
Self.Fcomissao_avista         := TModelERPclientesspc(Model).comissao_avista;
Self.Fdata_nasc         := TModelERPclientesspc(Model).data_nasc;
Self.Fdata_admi         := TModelERPclientesspc(Model).data_admi;
Self.Fdata_demi         := TModelERPclientesspc(Model).data_demi;
Self.Fsalario         := TModelERPclientesspc(Model).salario;
Self.Frg         := TModelERPclientesspc(Model).rg;
Self.Fcart_trabalho         := TModelERPclientesspc(Model).cart_trabalho;
Self.Ftitulo         := TModelERPclientesspc(Model).titulo;
Self.Fescolaridade         := TModelERPclientesspc(Model).escolaridade;
Self.Fobs         := TModelERPclientesspc(Model).obs;
Self.Fclick         := TModelERPclientesspc(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientesspc.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientesspc.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientesspc.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientesspc.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPclientesspc.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPclientesspc.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPclientesspc.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPclientesspc.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPclientesspc.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPclientesspc.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPclientesspc.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPclientesspc.Setfone(const Value: Boolean);   
begin                
  Ffone := Value;   
end;                 

procedure TModelERPclientesspc.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPclientesspc.Setfax(const Value: Boolean);   
begin                
  Ffax := Value;   
end;                 

procedure TModelERPclientesspc.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPclientesspc.Setcomissao_avista(const Value: Boolean);   
begin                
  Fcomissao_avista := Value;   
end;                 

procedure TModelERPclientesspc.Setdata_nasc(const Value: Boolean);   
begin                
  Fdata_nasc := Value;   
end;                 

procedure TModelERPclientesspc.Setdata_admi(const Value: Boolean);   
begin                
  Fdata_admi := Value;   
end;                 

procedure TModelERPclientesspc.Setdata_demi(const Value: Boolean);   
begin                
  Fdata_demi := Value;   
end;                 

procedure TModelERPclientesspc.Setsalario(const Value: Boolean);   
begin                
  Fsalario := Value;   
end;                 

procedure TModelERPclientesspc.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPclientesspc.Setcart_trabalho(const Value: Boolean);   
begin                
  Fcart_trabalho := Value;   
end;                 

procedure TModelERPclientesspc.Settitulo(const Value: Boolean);   
begin                
  Ftitulo := Value;   
end;                 

procedure TModelERPclientesspc.Setescolaridade(const Value: Boolean);   
begin                
  Fescolaridade := Value;   
end;                 

procedure TModelERPclientesspc.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPclientesspc.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
