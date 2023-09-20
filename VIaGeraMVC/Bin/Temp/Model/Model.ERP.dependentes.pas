unit Model.ERP.dependente_emergencia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdependenteemergencia = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome : WideString;
    Fdata_aniversario : TDateTime;
    Fcpf : WideString;
    Fendereco : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setdata_aniversario(const Value: TDateTime);
    procedure Setcpf(const Value: WideString);
    procedure Setendereco(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome     : WideString read Fnome write Setnome;
    property data_aniversario     : TDateTime read Fdata_aniversario write Setdata_aniversario;
    property cpf     : WideString read Fcpf write Setcpf;
    property endereco     : WideString read Fendereco write Setendereco;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdependenteemergencia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdependenteemergencia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdependenteemergencia(Model).id;
Self.Fid_cliente         := TModelERPdependenteemergencia(Model).id_cliente;
Self.Fnome         := TModelERPdependenteemergencia(Model).nome;
Self.Fdata_aniversario         := TModelERPdependenteemergencia(Model).data_aniversario;
Self.Fcpf         := TModelERPdependenteemergencia(Model).cpf;
Self.Fendereco         := TModelERPdependenteemergencia(Model).endereco;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdependenteemergencia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdependenteemergencia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdependenteemergencia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdependenteemergencia.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPdependenteemergencia.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPdependenteemergencia.Setdata_aniversario(const Value: Boolean);   
begin                
  Fdata_aniversario := Value;   
end;                 

procedure TModelERPdependenteemergencia.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPdependenteemergencia.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 


end.
