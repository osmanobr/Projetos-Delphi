unit Model.ERP.clientes_controle_proprio_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientescontroleproprioitem = class(TModelBase)

private
    Fid : Integer;
    Fpessoa : WideString;
    Fdata_ficha : TDateTime;
    Fcpf : WideString;
    Fcnpj : WideString;
    Fnome : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fcep : WideString;
    Fcidade : WideString;
    Fuf : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;

    procedure Setid(const Value: Integer);
    procedure Setpessoa(const Value: WideString);
    procedure Setdata_ficha(const Value: TDateTime);
    procedure Setcpf(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setnome(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Setrg_ssp(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property pessoa     : WideString read Fpessoa write Setpessoa;
    property data_ficha     : TDateTime read Fdata_ficha write Setdata_ficha;
    property cpf     : WideString read Fcpf write Setcpf;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property nome     : WideString read Fnome write Setnome;
    property rg     : WideString read Frg write Setrg;
    property rg_ssp     : WideString read Frg_ssp write Setrg_ssp;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property cep     : WideString read Fcep write Setcep;
    property cidade     : WideString read Fcidade write Setcidade;
    property uf     : WideString read Fuf write Setuf;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientescontroleproprioitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientescontroleproprioitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientescontroleproprioitem(Model).id;
Self.Fpessoa         := TModelERPclientescontroleproprioitem(Model).pessoa;
Self.Fdata_ficha         := TModelERPclientescontroleproprioitem(Model).data_ficha;
Self.Fcpf         := TModelERPclientescontroleproprioitem(Model).cpf;
Self.Fcnpj         := TModelERPclientescontroleproprioitem(Model).cnpj;
Self.Fnome         := TModelERPclientescontroleproprioitem(Model).nome;
Self.Frg         := TModelERPclientescontroleproprioitem(Model).rg;
Self.Frg_ssp         := TModelERPclientescontroleproprioitem(Model).rg_ssp;
Self.Fendereco         := TModelERPclientescontroleproprioitem(Model).endereco;
Self.Fbairro         := TModelERPclientescontroleproprioitem(Model).bairro;
Self.Fcep         := TModelERPclientescontroleproprioitem(Model).cep;
Self.Fcidade         := TModelERPclientescontroleproprioitem(Model).cidade;
Self.Fuf         := TModelERPclientescontroleproprioitem(Model).uf;
Self.Ftelefone         := TModelERPclientescontroleproprioitem(Model).telefone;
Self.Fcelular         := TModelERPclientescontroleproprioitem(Model).celular;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientescontroleproprioitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientescontroleproprioitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientescontroleproprioitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setpessoa(const Value: Boolean);   
begin                
  Fpessoa := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setdata_ficha(const Value: Boolean);   
begin                
  Fdata_ficha := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPclientescontroleproprioitem.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 


end.
