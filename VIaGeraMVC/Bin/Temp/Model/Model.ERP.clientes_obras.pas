unit Model.ERP.clientes_fotos_dependentes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPclientesfotosdependentes = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_obra : WideString;
    Fresponsavel : WideString;
    Fresponsavel_telefone : WideString;
    Fresponsavel_celular : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fcidade : WideString;
    Festado : WideString;
    Fcep : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fid_cidade : Integer;
    Fid_caixa : Integer;
    Fnome_caixa : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_obra(const Value: WideString);
    procedure Setresponsavel(const Value: WideString);
    procedure Setresponsavel_telefone(const Value: WideString);
    procedure Setresponsavel_celular(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setestado(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setid_cidade(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setnome_caixa(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_obra     : WideString read Fnome_obra write Setnome_obra;
    property responsavel     : WideString read Fresponsavel write Setresponsavel;
    property responsavel_telefone     : WideString read Fresponsavel_telefone write Setresponsavel_telefone;
    property responsavel_celular     : WideString read Fresponsavel_celular write Setresponsavel_celular;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property cidade     : WideString read Fcidade write Setcidade;
    property estado     : WideString read Festado write Setestado;
    property cep     : WideString read Fcep write Setcep;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property nome_caixa     : WideString read Fnome_caixa write Setnome_caixa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPclientesfotosdependentes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPclientesfotosdependentes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPclientesfotosdependentes(Model).id;
Self.Fid_cliente         := TModelERPclientesfotosdependentes(Model).id_cliente;
Self.Fnome_obra         := TModelERPclientesfotosdependentes(Model).nome_obra;
Self.Fresponsavel         := TModelERPclientesfotosdependentes(Model).responsavel;
Self.Fresponsavel_telefone         := TModelERPclientesfotosdependentes(Model).responsavel_telefone;
Self.Fresponsavel_celular         := TModelERPclientesfotosdependentes(Model).responsavel_celular;
Self.Fendereco         := TModelERPclientesfotosdependentes(Model).endereco;
Self.Fbairro         := TModelERPclientesfotosdependentes(Model).bairro;
Self.Fcidade         := TModelERPclientesfotosdependentes(Model).cidade;
Self.Festado         := TModelERPclientesfotosdependentes(Model).estado;
Self.Fcep         := TModelERPclientesfotosdependentes(Model).cep;
Self.Ftelefone         := TModelERPclientesfotosdependentes(Model).telefone;
Self.Fcelular         := TModelERPclientesfotosdependentes(Model).celular;
Self.Fid_cidade         := TModelERPclientesfotosdependentes(Model).id_cidade;
Self.Fid_caixa         := TModelERPclientesfotosdependentes(Model).id_caixa;
Self.Fnome_caixa         := TModelERPclientesfotosdependentes(Model).nome_caixa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPclientesfotosdependentes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPclientesfotosdependentes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPclientesfotosdependentes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setnome_obra(const Value: Boolean);   
begin                
  Fnome_obra := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setresponsavel(const Value: Boolean);   
begin                
  Fresponsavel := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setresponsavel_telefone(const Value: Boolean);   
begin                
  Fresponsavel_telefone := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setresponsavel_celular(const Value: Boolean);   
begin                
  Fresponsavel_celular := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPclientesfotosdependentes.Setnome_caixa(const Value: Boolean);   
begin                
  Fnome_caixa := Value;   
end;                 


end.
