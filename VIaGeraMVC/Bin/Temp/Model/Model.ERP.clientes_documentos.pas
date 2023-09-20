unit Model.ERP.clientes_credito;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientescredito = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_cliente : Integer;
    Fdescricao : WideString;
    Fplaca : WideString;
    Fobservacao : indefinido;
    Fcnpj : WideString;
    Fcpf : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_cliente(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setplaca(const Value: WideString);
    procedure Setobservacao(const Value: indefinido);
    procedure Setcnpj(const Value: WideString);
    procedure Setcpf(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property placa     : WideString read Fplaca write Setplaca;
    property observacao     : indefinido read Fobservacao write Setobservacao;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property cpf     : WideString read Fcpf write Setcpf;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientescredito.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientescredito) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientescredito(Model).id;
Self.Fdata         := TModelERPclientescredito(Model).data;
Self.Fid_cliente         := TModelERPclientescredito(Model).id_cliente;
Self.Fdescricao         := TModelERPclientescredito(Model).descricao;
Self.Fplaca         := TModelERPclientescredito(Model).placa;
Self.Fobservacao         := TModelERPclientescredito(Model).observacao;
Self.Fcnpj         := TModelERPclientescredito(Model).cnpj;
Self.Fcpf         := TModelERPclientescredito(Model).cpf;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientescredito.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientescredito.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientescredito.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientescredito.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPclientescredito.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientescredito.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPclientescredito.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPclientescredito.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPclientescredito.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPclientescredito.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 


end.
