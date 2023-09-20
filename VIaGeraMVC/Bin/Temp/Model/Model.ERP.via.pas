unit Model.ERP.vendedor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendedor = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Ffantasia : WideString;
    Finicio_atividade : TDateTime;
    Fnatureza_juridica : WideString;
    Fqualificacao_responsavel : WideString;
    Fporte : WideString;
    Fopcao_simples : WideString;
    Fcnpj : WideString;
    Fcep : WideString;
    Fendereco : WideString;
    Fcidade : WideString;
    Fuf : WideString;
    Ftelefones : WideString;
    Fsite : WideString;
    Femail : WideString;
    Fcontato : WideString;
    Fsocio1 : WideString;
    Fqualificacao_socio1 : WideString;
    Fsocio2 : WideString;
    Fqualificacao_socio2 : WideString;
    Fatividade : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setfantasia(const Value: WideString);
    procedure Setinicio_atividade(const Value: TDateTime);
    procedure Setnatureza_juridica(const Value: WideString);
    procedure Setqualificacao_responsavel(const Value: WideString);
    procedure Setporte(const Value: WideString);
    procedure Setopcao_simples(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Settelefones(const Value: WideString);
    procedure Setsite(const Value: WideString);
    procedure Setemail(const Value: WideString);
    procedure Setcontato(const Value: WideString);
    procedure Setsocio1(const Value: WideString);
    procedure Setqualificacao_socio1(const Value: WideString);
    procedure Setsocio2(const Value: WideString);
    procedure Setqualificacao_socio2(const Value: WideString);
    procedure Setatividade(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property fantasia     : WideString read Ffantasia write Setfantasia;
    property inicio_atividade     : TDateTime read Finicio_atividade write Setinicio_atividade;
    property natureza_juridica     : WideString read Fnatureza_juridica write Setnatureza_juridica;
    property qualificacao_responsavel     : WideString read Fqualificacao_responsavel write Setqualificacao_responsavel;
    property porte     : WideString read Fporte write Setporte;
    property opcao_simples     : WideString read Fopcao_simples write Setopcao_simples;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property cep     : WideString read Fcep write Setcep;
    property endereco     : WideString read Fendereco write Setendereco;
    property cidade     : WideString read Fcidade write Setcidade;
    property uf     : WideString read Fuf write Setuf;
    property telefones     : WideString read Ftelefones write Settelefones;
    property site     : WideString read Fsite write Setsite;
    property email     : WideString read Femail write Setemail;
    property contato     : WideString read Fcontato write Setcontato;
    property socio1     : WideString read Fsocio1 write Setsocio1;
    property qualificacao_socio1     : WideString read Fqualificacao_socio1 write Setqualificacao_socio1;
    property socio2     : WideString read Fsocio2 write Setsocio2;
    property qualificacao_socio2     : WideString read Fqualificacao_socio2 write Setqualificacao_socio2;
    property atividade     : indefinido read Fatividade write Setatividade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendedor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendedor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendedor(Model).id;
Self.Fnome         := TModelERPvendedor(Model).nome;
Self.Ffantasia         := TModelERPvendedor(Model).fantasia;
Self.Finicio_atividade         := TModelERPvendedor(Model).inicio_atividade;
Self.Fnatureza_juridica         := TModelERPvendedor(Model).natureza_juridica;
Self.Fqualificacao_responsavel         := TModelERPvendedor(Model).qualificacao_responsavel;
Self.Fporte         := TModelERPvendedor(Model).porte;
Self.Fopcao_simples         := TModelERPvendedor(Model).opcao_simples;
Self.Fcnpj         := TModelERPvendedor(Model).cnpj;
Self.Fcep         := TModelERPvendedor(Model).cep;
Self.Fendereco         := TModelERPvendedor(Model).endereco;
Self.Fcidade         := TModelERPvendedor(Model).cidade;
Self.Fuf         := TModelERPvendedor(Model).uf;
Self.Ftelefones         := TModelERPvendedor(Model).telefones;
Self.Fsite         := TModelERPvendedor(Model).site;
Self.Femail         := TModelERPvendedor(Model).email;
Self.Fcontato         := TModelERPvendedor(Model).contato;
Self.Fsocio1         := TModelERPvendedor(Model).socio1;
Self.Fqualificacao_socio1         := TModelERPvendedor(Model).qualificacao_socio1;
Self.Fsocio2         := TModelERPvendedor(Model).socio2;
Self.Fqualificacao_socio2         := TModelERPvendedor(Model).qualificacao_socio2;
Self.Fatividade         := TModelERPvendedor(Model).atividade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendedor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendedor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendedor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendedor.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPvendedor.Setfantasia(const Value: Boolean);   
begin                
  Ffantasia := Value;   
end;                 

procedure TModelERPvendedor.Setinicio_atividade(const Value: Boolean);   
begin                
  Finicio_atividade := Value;   
end;                 

procedure TModelERPvendedor.Setnatureza_juridica(const Value: Boolean);   
begin                
  Fnatureza_juridica := Value;   
end;                 

procedure TModelERPvendedor.Setqualificacao_responsavel(const Value: Boolean);   
begin                
  Fqualificacao_responsavel := Value;   
end;                 

procedure TModelERPvendedor.Setporte(const Value: Boolean);   
begin                
  Fporte := Value;   
end;                 

procedure TModelERPvendedor.Setopcao_simples(const Value: Boolean);   
begin                
  Fopcao_simples := Value;   
end;                 

procedure TModelERPvendedor.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPvendedor.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPvendedor.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPvendedor.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPvendedor.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPvendedor.Settelefones(const Value: Boolean);   
begin                
  Ftelefones := Value;   
end;                 

procedure TModelERPvendedor.Setsite(const Value: Boolean);   
begin                
  Fsite := Value;   
end;                 

procedure TModelERPvendedor.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPvendedor.Setcontato(const Value: Boolean);   
begin                
  Fcontato := Value;   
end;                 

procedure TModelERPvendedor.Setsocio1(const Value: Boolean);   
begin                
  Fsocio1 := Value;   
end;                 

procedure TModelERPvendedor.Setqualificacao_socio1(const Value: Boolean);   
begin                
  Fqualificacao_socio1 := Value;   
end;                 

procedure TModelERPvendedor.Setsocio2(const Value: Boolean);   
begin                
  Fsocio2 := Value;   
end;                 

procedure TModelERPvendedor.Setqualificacao_socio2(const Value: Boolean);   
begin                
  Fqualificacao_socio2 := Value;   
end;                 

procedure TModelERPvendedor.Setatividade(const Value: Boolean);   
begin                
  Fatividade := Value;   
end;                 


end.
