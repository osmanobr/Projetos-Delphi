unit Model.ERP.representacoes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPrepresentacoes = class(TModelBase)

private
    Fid : Integer;
    Fcpf : WideString;
    Fcnpj : WideString;
    Fnome : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Femail : WideString;
    Fsite : WideString;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setcpf(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setnome(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setemail(const Value: WideString);
    procedure Setsite(const Value: WideString);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property cpf     : WideString read Fcpf write Setcpf;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property nome     : WideString read Fnome write Setnome;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property email     : WideString read Femail write Setemail;
    property site     : WideString read Fsite write Setsite;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPrepresentacoes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPrepresentacoes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPrepresentacoes(Model).id;
Self.Fcpf         := TModelERPrepresentacoes(Model).cpf;
Self.Fcnpj         := TModelERPrepresentacoes(Model).cnpj;
Self.Fnome         := TModelERPrepresentacoes(Model).nome;
Self.Ftelefone         := TModelERPrepresentacoes(Model).telefone;
Self.Fcelular         := TModelERPrepresentacoes(Model).celular;
Self.Femail         := TModelERPrepresentacoes(Model).email;
Self.Fsite         := TModelERPrepresentacoes(Model).site;
Self.Fativo         := TModelERPrepresentacoes(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPrepresentacoes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPrepresentacoes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPrepresentacoes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPrepresentacoes.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPrepresentacoes.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPrepresentacoes.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPrepresentacoes.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPrepresentacoes.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPrepresentacoes.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPrepresentacoes.Setsite(const Value: Boolean);   
begin                
  Fsite := Value;   
end;                 

procedure TModelERPrepresentacoes.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
