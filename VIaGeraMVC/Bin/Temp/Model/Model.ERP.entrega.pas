unit Model.ERP.empresas_sped;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresassped = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_cupom : Integer;
    Fcliente : WideString;
    Fendereco : WideString;
    Fcep : WideString;
    Fdata : indefinido;
    Fvalor : Double;
    Fstatus : indefinido;
    Fnumero : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fid_cidade : Integer;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fcaixa : Integer;
    Fobs : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_cupom(const Value: Integer);
    procedure Setcliente(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setdata(const Value: indefinido);
    procedure Setvalor(const Value: Double);
    procedure Setstatus(const Value: indefinido);
    procedure Setnumero(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setcaixa(const Value: Integer);
    procedure Setobs(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_cupom     : Integer read Fid_cupom write Setid_cupom;
    property cliente     : WideString read Fcliente write Setcliente;
    property endereco     : WideString read Fendereco write Setendereco;
    property cep     : WideString read Fcep write Setcep;
    property data     : indefinido read Fdata write Setdata;
    property valor     : Double read Fvalor write Setvalor;
    property status     : indefinido read Fstatus write Setstatus;
    property numero     : WideString read Fnumero write Setnumero;
    property bairro     : WideString read Fbairro write Setbairro;
    property uf     : WideString read Fuf write Setuf;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property caixa     : Integer read Fcaixa write Setcaixa;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresassped.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresassped) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresassped(Model).id;
Self.Fid_cliente         := TModelERPempresassped(Model).id_cliente;
Self.Fid_cupom         := TModelERPempresassped(Model).id_cupom;
Self.Fcliente         := TModelERPempresassped(Model).cliente;
Self.Fendereco         := TModelERPempresassped(Model).endereco;
Self.Fcep         := TModelERPempresassped(Model).cep;
Self.Fdata         := TModelERPempresassped(Model).data;
Self.Fvalor         := TModelERPempresassped(Model).valor;
Self.Fstatus         := TModelERPempresassped(Model).status;
Self.Fnumero         := TModelERPempresassped(Model).numero;
Self.Fbairro         := TModelERPempresassped(Model).bairro;
Self.Fuf         := TModelERPempresassped(Model).uf;
Self.Fid_cidade         := TModelERPempresassped(Model).id_cidade;
Self.Ftelefone         := TModelERPempresassped(Model).telefone;
Self.Fcelular         := TModelERPempresassped(Model).celular;
Self.Fcaixa         := TModelERPempresassped(Model).caixa;
Self.Fobs         := TModelERPempresassped(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresassped.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresassped.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresassped.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresassped.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPempresassped.Setid_cupom(const Value: Boolean);   
begin                
  Fid_cupom := Value;   
end;                 

procedure TModelERPempresassped.Setcliente(const Value: Boolean);   
begin                
  Fcliente := Value;   
end;                 

procedure TModelERPempresassped.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPempresassped.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPempresassped.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPempresassped.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPempresassped.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPempresassped.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPempresassped.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPempresassped.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPempresassped.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPempresassped.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPempresassped.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPempresassped.Setcaixa(const Value: Boolean);   
begin                
  Fcaixa := Value;   
end;                 

procedure TModelERPempresassped.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
