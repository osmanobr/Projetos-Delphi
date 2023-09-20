unit Model.ERP.import_clientes_alterados;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportclientesalterados = class(TModelBase)

private
    Fid : Integer;
    Fid_cidade : Integer;
    Fnome : WideString;
    Fdocumento : WideString;
    Fendereco : WideString;
    Fnumero : WideString;
    Fbairro : WideString;
    Fcidade : WideString;
    Festado : WideString;
    Fcep : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fdatamov : indefinido;
    Frg : WideString;
    Ffisica : Integer;
    Fid_erp : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_cidade(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setdocumento(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setnumero(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setestado(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setdatamov(const Value: indefinido);
    procedure Setrg(const Value: WideString);
    procedure Setfisica(const Value: Integer);
    procedure Setid_erp(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property nome     : WideString read Fnome write Setnome;
    property documento     : WideString read Fdocumento write Setdocumento;
    property endereco     : WideString read Fendereco write Setendereco;
    property numero     : WideString read Fnumero write Setnumero;
    property bairro     : WideString read Fbairro write Setbairro;
    property cidade     : WideString read Fcidade write Setcidade;
    property estado     : WideString read Festado write Setestado;
    property cep     : WideString read Fcep write Setcep;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property datamov     : indefinido read Fdatamov write Setdatamov;
    property rg     : WideString read Frg write Setrg;
    property fisica     : Integer read Ffisica write Setfisica;
    property id_erp     : Integer read Fid_erp write Setid_erp;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportclientesalterados.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportclientesalterados) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportclientesalterados(Model).id;
Self.Fid_cidade         := TModelERPimportclientesalterados(Model).id_cidade;
Self.Fnome         := TModelERPimportclientesalterados(Model).nome;
Self.Fdocumento         := TModelERPimportclientesalterados(Model).documento;
Self.Fendereco         := TModelERPimportclientesalterados(Model).endereco;
Self.Fnumero         := TModelERPimportclientesalterados(Model).numero;
Self.Fbairro         := TModelERPimportclientesalterados(Model).bairro;
Self.Fcidade         := TModelERPimportclientesalterados(Model).cidade;
Self.Festado         := TModelERPimportclientesalterados(Model).estado;
Self.Fcep         := TModelERPimportclientesalterados(Model).cep;
Self.Ftelefone         := TModelERPimportclientesalterados(Model).telefone;
Self.Fcelular         := TModelERPimportclientesalterados(Model).celular;
Self.Fdatamov         := TModelERPimportclientesalterados(Model).datamov;
Self.Frg         := TModelERPimportclientesalterados(Model).rg;
Self.Ffisica         := TModelERPimportclientesalterados(Model).fisica;
Self.Fid_erp         := TModelERPimportclientesalterados(Model).id_erp;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportclientesalterados.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportclientesalterados.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportclientesalterados.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPimportclientesalterados.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setdatamov(const Value: Boolean);   
begin                
  Fdatamov := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setfisica(const Value: Boolean);   
begin                
  Ffisica := Value;   
end;                 

procedure TModelERPimportclientesalterados.Setid_erp(const Value: Boolean);   
begin                
  Fid_erp := Value;   
end;                 


end.
