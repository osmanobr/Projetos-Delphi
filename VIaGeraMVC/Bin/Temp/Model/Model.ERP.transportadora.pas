unit Model.ERP.transferencia_portador;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtransferenciaportador = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_ficha : TDateTime;
    Fnome : indefinido;
    Frazao_social : indefinido;
    Fendereco : indefinido;
    Fbairro : indefinido;
    Fid_cidade : Integer;
    Fcidade : indefinido;
    Fuf : indefinido;
    Fcep : indefinido;
    Fcaixa_postal : indefinido;
    Ffone1 : indefinido;
    Ffone2 : indefinido;
    Fcelular1 : indefinido;
    Fcnpj : indefinido;
    Finscricao_estadual : indefinido;
    Fe_mail : indefinido;
    Fhome_page : indefinido;
    Ficms : Double;
    Fcontato_nome : indefinido;
    Fcontato_fone : indefinido;
    Fcontato_celular : indefinido;
    Fcontato_e_mail : indefinido;
    Fobs : indefinido;
    Fclick : Boolean;
    Fcpf : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_ficha(const Value: TDateTime);
    procedure Setnome(const Value: indefinido);
    procedure Setrazao_social(const Value: indefinido);
    procedure Setendereco(const Value: indefinido);
    procedure Setbairro(const Value: indefinido);
    procedure Setid_cidade(const Value: Integer);
    procedure Setcidade(const Value: indefinido);
    procedure Setuf(const Value: indefinido);
    procedure Setcep(const Value: indefinido);
    procedure Setcaixa_postal(const Value: indefinido);
    procedure Setfone1(const Value: indefinido);
    procedure Setfone2(const Value: indefinido);
    procedure Setcelular1(const Value: indefinido);
    procedure Setcnpj(const Value: indefinido);
    procedure Setinscricao_estadual(const Value: indefinido);
    procedure Sete_mail(const Value: indefinido);
    procedure Sethome_page(const Value: indefinido);
    procedure Seticms(const Value: Double);
    procedure Setcontato_nome(const Value: indefinido);
    procedure Setcontato_fone(const Value: indefinido);
    procedure Setcontato_celular(const Value: indefinido);
    procedure Setcontato_e_mail(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setcpf(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_ficha     : TDateTime read Fdata_ficha write Setdata_ficha;
    property nome     : indefinido read Fnome write Setnome;
    property razao_social     : indefinido read Frazao_social write Setrazao_social;
    property endereco     : indefinido read Fendereco write Setendereco;
    property bairro     : indefinido read Fbairro write Setbairro;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property cidade     : indefinido read Fcidade write Setcidade;
    property uf     : indefinido read Fuf write Setuf;
    property cep     : indefinido read Fcep write Setcep;
    property caixa_postal     : indefinido read Fcaixa_postal write Setcaixa_postal;
    property fone1     : indefinido read Ffone1 write Setfone1;
    property fone2     : indefinido read Ffone2 write Setfone2;
    property celular1     : indefinido read Fcelular1 write Setcelular1;
    property cnpj     : indefinido read Fcnpj write Setcnpj;
    property inscricao_estadual     : indefinido read Finscricao_estadual write Setinscricao_estadual;
    property e_mail     : indefinido read Fe_mail write Sete_mail;
    property home_page     : indefinido read Fhome_page write Sethome_page;
    property icms     : Double read Ficms write Seticms;
    property contato_nome     : indefinido read Fcontato_nome write Setcontato_nome;
    property contato_fone     : indefinido read Fcontato_fone write Setcontato_fone;
    property contato_celular     : indefinido read Fcontato_celular write Setcontato_celular;
    property contato_e_mail     : indefinido read Fcontato_e_mail write Setcontato_e_mail;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property cpf     : WideString read Fcpf write Setcpf;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtransferenciaportador.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtransferenciaportador) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtransferenciaportador(Model).id;
Self.Fid_empresa         := TModelERPtransferenciaportador(Model).id_empresa;
Self.Fdata_ficha         := TModelERPtransferenciaportador(Model).data_ficha;
Self.Fnome         := TModelERPtransferenciaportador(Model).nome;
Self.Frazao_social         := TModelERPtransferenciaportador(Model).razao_social;
Self.Fendereco         := TModelERPtransferenciaportador(Model).endereco;
Self.Fbairro         := TModelERPtransferenciaportador(Model).bairro;
Self.Fid_cidade         := TModelERPtransferenciaportador(Model).id_cidade;
Self.Fcidade         := TModelERPtransferenciaportador(Model).cidade;
Self.Fuf         := TModelERPtransferenciaportador(Model).uf;
Self.Fcep         := TModelERPtransferenciaportador(Model).cep;
Self.Fcaixa_postal         := TModelERPtransferenciaportador(Model).caixa_postal;
Self.Ffone1         := TModelERPtransferenciaportador(Model).fone1;
Self.Ffone2         := TModelERPtransferenciaportador(Model).fone2;
Self.Fcelular1         := TModelERPtransferenciaportador(Model).celular1;
Self.Fcnpj         := TModelERPtransferenciaportador(Model).cnpj;
Self.Finscricao_estadual         := TModelERPtransferenciaportador(Model).inscricao_estadual;
Self.Fe_mail         := TModelERPtransferenciaportador(Model).e_mail;
Self.Fhome_page         := TModelERPtransferenciaportador(Model).home_page;
Self.Ficms         := TModelERPtransferenciaportador(Model).icms;
Self.Fcontato_nome         := TModelERPtransferenciaportador(Model).contato_nome;
Self.Fcontato_fone         := TModelERPtransferenciaportador(Model).contato_fone;
Self.Fcontato_celular         := TModelERPtransferenciaportador(Model).contato_celular;
Self.Fcontato_e_mail         := TModelERPtransferenciaportador(Model).contato_e_mail;
Self.Fobs         := TModelERPtransferenciaportador(Model).obs;
Self.Fclick         := TModelERPtransferenciaportador(Model).click;
Self.Fcpf         := TModelERPtransferenciaportador(Model).cpf;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtransferenciaportador.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtransferenciaportador.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtransferenciaportador.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setdata_ficha(const Value: Boolean);   
begin                
  Fdata_ficha := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcaixa_postal(const Value: Boolean);   
begin                
  Fcaixa_postal := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setfone1(const Value: Boolean);   
begin                
  Ffone1 := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setfone2(const Value: Boolean);   
begin                
  Ffone2 := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcelular1(const Value: Boolean);   
begin                
  Fcelular1 := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPtransferenciaportador.Sete_mail(const Value: Boolean);   
begin                
  Fe_mail := Value;   
end;                 

procedure TModelERPtransferenciaportador.Sethome_page(const Value: Boolean);   
begin                
  Fhome_page := Value;   
end;                 

procedure TModelERPtransferenciaportador.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcontato_nome(const Value: Boolean);   
begin                
  Fcontato_nome := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcontato_fone(const Value: Boolean);   
begin                
  Fcontato_fone := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcontato_celular(const Value: Boolean);   
begin                
  Fcontato_celular := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcontato_e_mail(const Value: Boolean);   
begin                
  Fcontato_e_mail := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPtransferenciaportador.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 


end.
