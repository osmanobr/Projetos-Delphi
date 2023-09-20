unit Model.ERP.cliente_controle_proprio;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientecontroleproprio = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Finscricao_estadual : indefinido;
    Fendereco : WideString;
    Fnumero : Integer;
    Fid_cidade : Integer;
    Fbairro : WideString;
    Festado : WideString;
    Fcomplemento : indefinido;
    Fcep : indefinido;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setinscricao_estadual(const Value: indefinido);
    procedure Setendereco(const Value: WideString);
    procedure Setnumero(const Value: Integer);
    procedure Setid_cidade(const Value: Integer);
    procedure Setbairro(const Value: WideString);
    procedure Setestado(const Value: WideString);
    procedure Setcomplemento(const Value: indefinido);
    procedure Setcep(const Value: indefinido);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property inscricao_estadual     : indefinido read Finscricao_estadual write Setinscricao_estadual;
    property endereco     : WideString read Fendereco write Setendereco;
    property numero     : Integer read Fnumero write Setnumero;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property bairro     : WideString read Fbairro write Setbairro;
    property estado     : WideString read Festado write Setestado;
    property complemento     : indefinido read Fcomplemento write Setcomplemento;
    property cep     : indefinido read Fcep write Setcep;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientecontroleproprio.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientecontroleproprio) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientecontroleproprio(Model).id;
Self.Fid_cliente         := TModelERPclientecontroleproprio(Model).id_cliente;
Self.Finscricao_estadual         := TModelERPclientecontroleproprio(Model).inscricao_estadual;
Self.Fendereco         := TModelERPclientecontroleproprio(Model).endereco;
Self.Fnumero         := TModelERPclientecontroleproprio(Model).numero;
Self.Fid_cidade         := TModelERPclientecontroleproprio(Model).id_cidade;
Self.Fbairro         := TModelERPclientecontroleproprio(Model).bairro;
Self.Festado         := TModelERPclientecontroleproprio(Model).estado;
Self.Fcomplemento         := TModelERPclientecontroleproprio(Model).complemento;
Self.Fcep         := TModelERPclientecontroleproprio(Model).cep;
Self.Fativo         := TModelERPclientecontroleproprio(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientecontroleproprio.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientecontroleproprio.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientecontroleproprio.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setcomplemento(const Value: Boolean);   
begin                
  Fcomplemento := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPclientecontroleproprio.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
