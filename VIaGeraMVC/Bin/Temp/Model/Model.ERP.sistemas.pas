unit Model.ERP.setor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPsetor = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fversao : indefinido;
    Flinguagem_programacao : indefinido;
    Fcodigo_md5 : indefinido;
    Fplataforma : indefinido;
    Fbanco_dados : indefinido;
    Fsistema_operacional : indefinido;
    Fimpressora_fiscal : indefinido;
    Ftipo : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setversao(const Value: indefinido);
    procedure Setlinguagem_programacao(const Value: indefinido);
    procedure Setcodigo_md5(const Value: indefinido);
    procedure Setplataforma(const Value: indefinido);
    procedure Setbanco_dados(const Value: indefinido);
    procedure Setsistema_operacional(const Value: indefinido);
    procedure Setimpressora_fiscal(const Value: indefinido);
    procedure Settipo(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property versao     : indefinido read Fversao write Setversao;
    property linguagem_programacao     : indefinido read Flinguagem_programacao write Setlinguagem_programacao;
    property codigo_md5     : indefinido read Fcodigo_md5 write Setcodigo_md5;
    property plataforma     : indefinido read Fplataforma write Setplataforma;
    property banco_dados     : indefinido read Fbanco_dados write Setbanco_dados;
    property sistema_operacional     : indefinido read Fsistema_operacional write Setsistema_operacional;
    property impressora_fiscal     : indefinido read Fimpressora_fiscal write Setimpressora_fiscal;
    property tipo     : indefinido read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPsetor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPsetor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPsetor(Model).id;
Self.Fid_empresa         := TModelERPsetor(Model).id_empresa;
Self.Fnome         := TModelERPsetor(Model).nome;
Self.Fversao         := TModelERPsetor(Model).versao;
Self.Flinguagem_programacao         := TModelERPsetor(Model).linguagem_programacao;
Self.Fcodigo_md5         := TModelERPsetor(Model).codigo_md5;
Self.Fplataforma         := TModelERPsetor(Model).plataforma;
Self.Fbanco_dados         := TModelERPsetor(Model).banco_dados;
Self.Fsistema_operacional         := TModelERPsetor(Model).sistema_operacional;
Self.Fimpressora_fiscal         := TModelERPsetor(Model).impressora_fiscal;
Self.Ftipo         := TModelERPsetor(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPsetor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPsetor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPsetor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPsetor.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPsetor.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPsetor.Setversao(const Value: Boolean);   
begin                
  Fversao := Value;   
end;                 

procedure TModelERPsetor.Setlinguagem_programacao(const Value: Boolean);   
begin                
  Flinguagem_programacao := Value;   
end;                 

procedure TModelERPsetor.Setcodigo_md5(const Value: Boolean);   
begin                
  Fcodigo_md5 := Value;   
end;                 

procedure TModelERPsetor.Setplataforma(const Value: Boolean);   
begin                
  Fplataforma := Value;   
end;                 

procedure TModelERPsetor.Setbanco_dados(const Value: Boolean);   
begin                
  Fbanco_dados := Value;   
end;                 

procedure TModelERPsetor.Setsistema_operacional(const Value: Boolean);   
begin                
  Fsistema_operacional := Value;   
end;                 

procedure TModelERPsetor.Setimpressora_fiscal(const Value: Boolean);   
begin                
  Fimpressora_fiscal := Value;   
end;                 

procedure TModelERPsetor.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
