unit Model.ERP.formas_pagamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPformaspagamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_ficha : TDateTime;
    Fnome : WideString;
    Frazao_social : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fid_cidade : Integer;
    Fcidade : WideString;
    Fuf : WideString;
    Fcep : WideString;
    Fcaixa_postal : WideString;
    Ffone1 : WideString;
    Ffone2 : WideString;
    Fcelular1 : WideString;
    Fcnpj : WideString;
    Finscricao_estadual : WideString;
    Fe_mail : WideString;
    Fhome_page : WideString;
    Ficms : Double;
    Frepresentante_nome : WideString;
    Frepresentante_fone : WideString;
    Frepresentante_celular : WideString;
    Frepresentante_e_mail : WideString;
    Fobs : indefinido;
    Fclick : Boolean;
    Frepresentante_skype : WideString;
    Frepresentante_msn : WideString;
    Fcondicoes_pagamento : WideString;
    Fcpf : WideString;
    Fprodutor_rural : Boolean;
    Ffornecedor : WideString;
    Fviacentral : Boolean;
    Fid_servidor : Integer;
    Fhash_local : WideString;
    Fhash_matriz : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_ficha(const Value: TDateTime);
    procedure Setnome(const Value: WideString);
    procedure Setrazao_social(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setcidade(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setcaixa_postal(const Value: WideString);
    procedure Setfone1(const Value: WideString);
    procedure Setfone2(const Value: WideString);
    procedure Setcelular1(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setinscricao_estadual(const Value: WideString);
    procedure Sete_mail(const Value: WideString);
    procedure Sethome_page(const Value: WideString);
    procedure Seticms(const Value: Double);
    procedure Setrepresentante_nome(const Value: WideString);
    procedure Setrepresentante_fone(const Value: WideString);
    procedure Setrepresentante_celular(const Value: WideString);
    procedure Setrepresentante_e_mail(const Value: WideString);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setrepresentante_skype(const Value: WideString);
    procedure Setrepresentante_msn(const Value: WideString);
    procedure Setcondicoes_pagamento(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setprodutor_rural(const Value: Boolean);
    procedure Setfornecedor(const Value: WideString);
    procedure Setviacentral(const Value: Boolean);
    procedure Setid_servidor(const Value: Integer);
    procedure Sethash_local(const Value: WideString);
    procedure Sethash_matriz(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_ficha     : TDateTime read Fdata_ficha write Setdata_ficha;
    property nome     : WideString read Fnome write Setnome;
    property razao_social     : WideString read Frazao_social write Setrazao_social;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property cidade     : WideString read Fcidade write Setcidade;
    property uf     : WideString read Fuf write Setuf;
    property cep     : WideString read Fcep write Setcep;
    property caixa_postal     : WideString read Fcaixa_postal write Setcaixa_postal;
    property fone1     : WideString read Ffone1 write Setfone1;
    property fone2     : WideString read Ffone2 write Setfone2;
    property celular1     : WideString read Fcelular1 write Setcelular1;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property inscricao_estadual     : WideString read Finscricao_estadual write Setinscricao_estadual;
    property e_mail     : WideString read Fe_mail write Sete_mail;
    property home_page     : WideString read Fhome_page write Sethome_page;
    property icms     : Double read Ficms write Seticms;
    property representante_nome     : WideString read Frepresentante_nome write Setrepresentante_nome;
    property representante_fone     : WideString read Frepresentante_fone write Setrepresentante_fone;
    property representante_celular     : WideString read Frepresentante_celular write Setrepresentante_celular;
    property representante_e_mail     : WideString read Frepresentante_e_mail write Setrepresentante_e_mail;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property representante_skype     : WideString read Frepresentante_skype write Setrepresentante_skype;
    property representante_msn     : WideString read Frepresentante_msn write Setrepresentante_msn;
    property condicoes_pagamento     : WideString read Fcondicoes_pagamento write Setcondicoes_pagamento;
    property cpf     : WideString read Fcpf write Setcpf;
    property produtor_rural     : Boolean read Fprodutor_rural write Setprodutor_rural;
    property fornecedor     : WideString read Ffornecedor write Setfornecedor;
    property viacentral     : Boolean read Fviacentral write Setviacentral;
    property id_servidor     : Integer read Fid_servidor write Setid_servidor;
    property hash_local     : WideString read Fhash_local write Sethash_local;
    property hash_matriz     : WideString read Fhash_matriz write Sethash_matriz;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPformaspagamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPformaspagamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPformaspagamento(Model).id;
Self.Fid_empresa         := TModelERPformaspagamento(Model).id_empresa;
Self.Fdata_ficha         := TModelERPformaspagamento(Model).data_ficha;
Self.Fnome         := TModelERPformaspagamento(Model).nome;
Self.Frazao_social         := TModelERPformaspagamento(Model).razao_social;
Self.Fendereco         := TModelERPformaspagamento(Model).endereco;
Self.Fbairro         := TModelERPformaspagamento(Model).bairro;
Self.Fid_cidade         := TModelERPformaspagamento(Model).id_cidade;
Self.Fcidade         := TModelERPformaspagamento(Model).cidade;
Self.Fuf         := TModelERPformaspagamento(Model).uf;
Self.Fcep         := TModelERPformaspagamento(Model).cep;
Self.Fcaixa_postal         := TModelERPformaspagamento(Model).caixa_postal;
Self.Ffone1         := TModelERPformaspagamento(Model).fone1;
Self.Ffone2         := TModelERPformaspagamento(Model).fone2;
Self.Fcelular1         := TModelERPformaspagamento(Model).celular1;
Self.Fcnpj         := TModelERPformaspagamento(Model).cnpj;
Self.Finscricao_estadual         := TModelERPformaspagamento(Model).inscricao_estadual;
Self.Fe_mail         := TModelERPformaspagamento(Model).e_mail;
Self.Fhome_page         := TModelERPformaspagamento(Model).home_page;
Self.Ficms         := TModelERPformaspagamento(Model).icms;
Self.Frepresentante_nome         := TModelERPformaspagamento(Model).representante_nome;
Self.Frepresentante_fone         := TModelERPformaspagamento(Model).representante_fone;
Self.Frepresentante_celular         := TModelERPformaspagamento(Model).representante_celular;
Self.Frepresentante_e_mail         := TModelERPformaspagamento(Model).representante_e_mail;
Self.Fobs         := TModelERPformaspagamento(Model).obs;
Self.Fclick         := TModelERPformaspagamento(Model).click;
Self.Frepresentante_skype         := TModelERPformaspagamento(Model).representante_skype;
Self.Frepresentante_msn         := TModelERPformaspagamento(Model).representante_msn;
Self.Fcondicoes_pagamento         := TModelERPformaspagamento(Model).condicoes_pagamento;
Self.Fcpf         := TModelERPformaspagamento(Model).cpf;
Self.Fprodutor_rural         := TModelERPformaspagamento(Model).produtor_rural;
Self.Ffornecedor         := TModelERPformaspagamento(Model).fornecedor;
Self.Fviacentral         := TModelERPformaspagamento(Model).viacentral;
Self.Fid_servidor         := TModelERPformaspagamento(Model).id_servidor;
Self.Fhash_local         := TModelERPformaspagamento(Model).hash_local;
Self.Fhash_matriz         := TModelERPformaspagamento(Model).hash_matriz;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPformaspagamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPformaspagamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPformaspagamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPformaspagamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPformaspagamento.Setdata_ficha(const Value: Boolean);   
begin                
  Fdata_ficha := Value;   
end;                 

procedure TModelERPformaspagamento.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPformaspagamento.Setrazao_social(const Value: Boolean);   
begin                
  Frazao_social := Value;   
end;                 

procedure TModelERPformaspagamento.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPformaspagamento.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPformaspagamento.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPformaspagamento.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPformaspagamento.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPformaspagamento.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPformaspagamento.Setcaixa_postal(const Value: Boolean);   
begin                
  Fcaixa_postal := Value;   
end;                 

procedure TModelERPformaspagamento.Setfone1(const Value: Boolean);   
begin                
  Ffone1 := Value;   
end;                 

procedure TModelERPformaspagamento.Setfone2(const Value: Boolean);   
begin                
  Ffone2 := Value;   
end;                 

procedure TModelERPformaspagamento.Setcelular1(const Value: Boolean);   
begin                
  Fcelular1 := Value;   
end;                 

procedure TModelERPformaspagamento.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPformaspagamento.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPformaspagamento.Sete_mail(const Value: Boolean);   
begin                
  Fe_mail := Value;   
end;                 

procedure TModelERPformaspagamento.Sethome_page(const Value: Boolean);   
begin                
  Fhome_page := Value;   
end;                 

procedure TModelERPformaspagamento.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPformaspagamento.Setrepresentante_nome(const Value: Boolean);   
begin                
  Frepresentante_nome := Value;   
end;                 

procedure TModelERPformaspagamento.Setrepresentante_fone(const Value: Boolean);   
begin                
  Frepresentante_fone := Value;   
end;                 

procedure TModelERPformaspagamento.Setrepresentante_celular(const Value: Boolean);   
begin                
  Frepresentante_celular := Value;   
end;                 

procedure TModelERPformaspagamento.Setrepresentante_e_mail(const Value: Boolean);   
begin                
  Frepresentante_e_mail := Value;   
end;                 

procedure TModelERPformaspagamento.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPformaspagamento.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPformaspagamento.Setrepresentante_skype(const Value: Boolean);   
begin                
  Frepresentante_skype := Value;   
end;                 

procedure TModelERPformaspagamento.Setrepresentante_msn(const Value: Boolean);   
begin                
  Frepresentante_msn := Value;   
end;                 

procedure TModelERPformaspagamento.Setcondicoes_pagamento(const Value: Boolean);   
begin                
  Fcondicoes_pagamento := Value;   
end;                 

procedure TModelERPformaspagamento.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPformaspagamento.Setprodutor_rural(const Value: Boolean);   
begin                
  Fprodutor_rural := Value;   
end;                 

procedure TModelERPformaspagamento.Setfornecedor(const Value: Boolean);   
begin                
  Ffornecedor := Value;   
end;                 

procedure TModelERPformaspagamento.Setviacentral(const Value: Boolean);   
begin                
  Fviacentral := Value;   
end;                 

procedure TModelERPformaspagamento.Setid_servidor(const Value: Boolean);   
begin                
  Fid_servidor := Value;   
end;                 

procedure TModelERPformaspagamento.Sethash_local(const Value: Boolean);   
begin                
  Fhash_local := Value;   
end;                 

procedure TModelERPformaspagamento.Sethash_matriz(const Value: Boolean);   
begin                
  Fhash_matriz := Value;   
end;                 


end.
