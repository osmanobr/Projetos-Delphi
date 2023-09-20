unit Model.ERP.dependentes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdependentes = class(TModelBase)

private
    Fid_empresa : Integer;
    Fid : Integer;
    Fnome : WideString;
    Fid_setor : Integer;
    Fsetor : WideString;
    Fid_secao : Integer;
    Fsecao : WideString;
    Fid_grupo : Integer;
    Fgrupo : WideString;
    Fid_subgrupo : Integer;
    Fsubgrupo : WideString;
    Fquantidade : Double;
    Ftotal : Double;
    Fcusto : Double;
    Flucro : Double;
    Fperc : Double;

    procedure Setid_empresa(const Value: Integer);
    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setid_setor(const Value: Integer);
    procedure Setsetor(const Value: WideString);
    procedure Setid_secao(const Value: Integer);
    procedure Setsecao(const Value: WideString);
    procedure Setid_grupo(const Value: Integer);
    procedure Setgrupo(const Value: WideString);
    procedure Setid_subgrupo(const Value: Integer);
    procedure Setsubgrupo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setcusto(const Value: Double);
    procedure Setlucro(const Value: Double);
    procedure Setperc(const Value: Double);

public
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property id_setor     : Integer read Fid_setor write Setid_setor;
    property setor     : WideString read Fsetor write Setsetor;
    property id_secao     : Integer read Fid_secao write Setid_secao;
    property secao     : WideString read Fsecao write Setsecao;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property grupo     : WideString read Fgrupo write Setgrupo;
    property id_subgrupo     : Integer read Fid_subgrupo write Setid_subgrupo;
    property subgrupo     : WideString read Fsubgrupo write Setsubgrupo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property total     : Double read Ftotal write Settotal;
    property custo     : Double read Fcusto write Setcusto;
    property lucro     : Double read Flucro write Setlucro;
    property perc     : Double read Fperc write Setperc;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdependentes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdependentes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid_empresa         := TModelERPdependentes(Model).id_empresa;
Self.Fid         := TModelERPdependentes(Model).id;
Self.Fnome         := TModelERPdependentes(Model).nome;
Self.Fid_setor         := TModelERPdependentes(Model).id_setor;
Self.Fsetor         := TModelERPdependentes(Model).setor;
Self.Fid_secao         := TModelERPdependentes(Model).id_secao;
Self.Fsecao         := TModelERPdependentes(Model).secao;
Self.Fid_grupo         := TModelERPdependentes(Model).id_grupo;
Self.Fgrupo         := TModelERPdependentes(Model).grupo;
Self.Fid_subgrupo         := TModelERPdependentes(Model).id_subgrupo;
Self.Fsubgrupo         := TModelERPdependentes(Model).subgrupo;
Self.Fquantidade         := TModelERPdependentes(Model).quantidade;
Self.Ftotal         := TModelERPdependentes(Model).total;
Self.Fcusto         := TModelERPdependentes(Model).custo;
Self.Flucro         := TModelERPdependentes(Model).lucro;
Self.Fperc         := TModelERPdependentes(Model).perc;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdependentes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdependentes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdependentes.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdependentes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdependentes.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPdependentes.Setid_setor(const Value: Boolean);   
begin                
  Fid_setor := Value;   
end;                 

procedure TModelERPdependentes.Setsetor(const Value: Boolean);   
begin                
  Fsetor := Value;   
end;                 

procedure TModelERPdependentes.Setid_secao(const Value: Boolean);   
begin                
  Fid_secao := Value;   
end;                 

procedure TModelERPdependentes.Setsecao(const Value: Boolean);   
begin                
  Fsecao := Value;   
end;                 

procedure TModelERPdependentes.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPdependentes.Setgrupo(const Value: Boolean);   
begin                
  Fgrupo := Value;   
end;                 

procedure TModelERPdependentes.Setid_subgrupo(const Value: Boolean);   
begin                
  Fid_subgrupo := Value;   
end;                 

procedure TModelERPdependentes.Setsubgrupo(const Value: Boolean);   
begin                
  Fsubgrupo := Value;   
end;                 

procedure TModelERPdependentes.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPdependentes.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPdependentes.Setcusto(const Value: Boolean);   
begin                
  Fcusto := Value;   
end;                 

procedure TModelERPdependentes.Setlucro(const Value: Boolean);   
begin                
  Flucro := Value;   
end;                 

procedure TModelERPdependentes.Setperc(const Value: Boolean);   
begin                
  Fperc := Value;   
end;                 


end.
