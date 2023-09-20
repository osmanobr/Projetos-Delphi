unit Model.ERP.leitura_coleta_lote;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituracoletalote = class(TModelBase)

private
    Fid : Integer;
    Fid_modelo : Integer;
    Fid_cidade : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Festado : WideString;
    Fcidade : WideString;
    Fcep : WideString;
    Fresponsavel : WideString;
    Fcontato : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fdatahora : indefinido;
    Fultimo_fator : Double;
    Fultimo_valor : Double;
    Fobservacao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_modelo(const Value: Integer);
    procedure Setid_cidade(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setbairro(const Value: WideString);
    procedure Setestado(const Value: WideString);
    procedure Setcidade(const Value: WideString);
    procedure Setcep(const Value: WideString);
    procedure Setresponsavel(const Value: WideString);
    procedure Setcontato(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);
    procedure Setultimo_fator(const Value: Double);
    procedure Setultimo_valor(const Value: Double);
    procedure Setobservacao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_modelo     : Integer read Fid_modelo write Setid_modelo;
    property id_cidade     : Integer read Fid_cidade write Setid_cidade;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property bairro     : WideString read Fbairro write Setbairro;
    property estado     : WideString read Festado write Setestado;
    property cidade     : WideString read Fcidade write Setcidade;
    property cep     : WideString read Fcep write Setcep;
    property responsavel     : WideString read Fresponsavel write Setresponsavel;
    property contato     : WideString read Fcontato write Setcontato;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property ultimo_fator     : Double read Fultimo_fator write Setultimo_fator;
    property ultimo_valor     : Double read Fultimo_valor write Setultimo_valor;
    property observacao     : WideString read Fobservacao write Setobservacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituracoletalote.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituracoletalote) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituracoletalote(Model).id;
Self.Fid_modelo         := TModelERPleituracoletalote(Model).id_modelo;
Self.Fid_cidade         := TModelERPleituracoletalote(Model).id_cidade;
Self.Fnome         := TModelERPleituracoletalote(Model).nome;
Self.Fendereco         := TModelERPleituracoletalote(Model).endereco;
Self.Fbairro         := TModelERPleituracoletalote(Model).bairro;
Self.Festado         := TModelERPleituracoletalote(Model).estado;
Self.Fcidade         := TModelERPleituracoletalote(Model).cidade;
Self.Fcep         := TModelERPleituracoletalote(Model).cep;
Self.Fresponsavel         := TModelERPleituracoletalote(Model).responsavel;
Self.Fcontato         := TModelERPleituracoletalote(Model).contato;
Self.Ftelefone         := TModelERPleituracoletalote(Model).telefone;
Self.Fcelular         := TModelERPleituracoletalote(Model).celular;
Self.Fdatahora         := TModelERPleituracoletalote(Model).datahora;
Self.Fultimo_fator         := TModelERPleituracoletalote(Model).ultimo_fator;
Self.Fultimo_valor         := TModelERPleituracoletalote(Model).ultimo_valor;
Self.Fobservacao         := TModelERPleituracoletalote(Model).observacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituracoletalote.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituracoletalote.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituracoletalote.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituracoletalote.Setid_modelo(const Value: Boolean);   
begin                
  Fid_modelo := Value;   
end;                 

procedure TModelERPleituracoletalote.Setid_cidade(const Value: Boolean);   
begin                
  Fid_cidade := Value;   
end;                 

procedure TModelERPleituracoletalote.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPleituracoletalote.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPleituracoletalote.Setbairro(const Value: Boolean);   
begin                
  Fbairro := Value;   
end;                 

procedure TModelERPleituracoletalote.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPleituracoletalote.Setcidade(const Value: Boolean);   
begin                
  Fcidade := Value;   
end;                 

procedure TModelERPleituracoletalote.Setcep(const Value: Boolean);   
begin                
  Fcep := Value;   
end;                 

procedure TModelERPleituracoletalote.Setresponsavel(const Value: Boolean);   
begin                
  Fresponsavel := Value;   
end;                 

procedure TModelERPleituracoletalote.Setcontato(const Value: Boolean);   
begin                
  Fcontato := Value;   
end;                 

procedure TModelERPleituracoletalote.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPleituracoletalote.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPleituracoletalote.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPleituracoletalote.Setultimo_fator(const Value: Boolean);   
begin                
  Fultimo_fator := Value;   
end;                 

procedure TModelERPleituracoletalote.Setultimo_valor(const Value: Boolean);   
begin                
  Fultimo_valor := Value;   
end;                 

procedure TModelERPleituracoletalote.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 


end.
