unit Model.ERP.atividade;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPatividade = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fhora : WideString;
    Fid_fornecedor : Integer;
    Fid_empresa : Integer;
    Ftotal_autorizacao : Double;
    Fsituacao : WideString;
    Fclick : Boolean;
    Fnome_fornecedor : WideString;
    Fid_cliente : Integer;
    Ffaturado : WideString;
    Fnome_cliente : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Sethora(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Settotal_autorizacao(const Value: Double);
    procedure Setsituacao(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setnome_fornecedor(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setfaturado(const Value: WideString);
    procedure Setnome_cliente(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property hora     : WideString read Fhora write Sethora;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property total_autorizacao     : Double read Ftotal_autorizacao write Settotal_autorizacao;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property click     : Boolean read Fclick write Setclick;
    property nome_fornecedor     : WideString read Fnome_fornecedor write Setnome_fornecedor;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property faturado     : WideString read Ffaturado write Setfaturado;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPatividade.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPatividade) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPatividade(Model).id;
Self.Fdata         := TModelERPatividade(Model).data;
Self.Fhora         := TModelERPatividade(Model).hora;
Self.Fid_fornecedor         := TModelERPatividade(Model).id_fornecedor;
Self.Fid_empresa         := TModelERPatividade(Model).id_empresa;
Self.Ftotal_autorizacao         := TModelERPatividade(Model).total_autorizacao;
Self.Fsituacao         := TModelERPatividade(Model).situacao;
Self.Fclick         := TModelERPatividade(Model).click;
Self.Fnome_fornecedor         := TModelERPatividade(Model).nome_fornecedor;
Self.Fid_cliente         := TModelERPatividade(Model).id_cliente;
Self.Ffaturado         := TModelERPatividade(Model).faturado;
Self.Fnome_cliente         := TModelERPatividade(Model).nome_cliente;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPatividade.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPatividade.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPatividade.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPatividade.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPatividade.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPatividade.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPatividade.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPatividade.Settotal_autorizacao(const Value: Boolean);   
begin                
  Ftotal_autorizacao := Value;   
end;                 

procedure TModelERPatividade.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPatividade.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPatividade.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPatividade.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPatividade.Setfaturado(const Value: Boolean);   
begin                
  Ffaturado := Value;   
end;                 

procedure TModelERPatividade.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 


end.
