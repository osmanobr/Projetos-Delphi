unit Model.ERP.nfe_manifesto_nsu;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPnfemanifestonsu = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Flin : Integer;
    Fcol : Integer;
    Ffonte : indefinido;
    Ftamanho : indefinido;
    Fimprime : indefinido;
    Fcampo : indefinido;
    Ftabela : indefinido;
    Ftipo : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setlin(const Value: Integer);
    procedure Setcol(const Value: Integer);
    procedure Setfonte(const Value: indefinido);
    procedure Settamanho(const Value: indefinido);
    procedure Setimprime(const Value: indefinido);
    procedure Setcampo(const Value: indefinido);
    procedure Settabela(const Value: indefinido);
    procedure Settipo(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property lin     : Integer read Flin write Setlin;
    property col     : Integer read Fcol write Setcol;
    property fonte     : indefinido read Ffonte write Setfonte;
    property tamanho     : indefinido read Ftamanho write Settamanho;
    property imprime     : indefinido read Fimprime write Setimprime;
    property campo     : indefinido read Fcampo write Setcampo;
    property tabela     : indefinido read Ftabela write Settabela;
    property tipo     : indefinido read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPnfemanifestonsu.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPnfemanifestonsu) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPnfemanifestonsu(Model).id;
Self.Fid_empresa         := TModelERPnfemanifestonsu(Model).id_empresa;
Self.Fnome         := TModelERPnfemanifestonsu(Model).nome;
Self.Flin         := TModelERPnfemanifestonsu(Model).lin;
Self.Fcol         := TModelERPnfemanifestonsu(Model).col;
Self.Ffonte         := TModelERPnfemanifestonsu(Model).fonte;
Self.Ftamanho         := TModelERPnfemanifestonsu(Model).tamanho;
Self.Fimprime         := TModelERPnfemanifestonsu(Model).imprime;
Self.Fcampo         := TModelERPnfemanifestonsu(Model).campo;
Self.Ftabela         := TModelERPnfemanifestonsu(Model).tabela;
Self.Ftipo         := TModelERPnfemanifestonsu(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPnfemanifestonsu.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPnfemanifestonsu.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPnfemanifestonsu.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Setcampo(const Value: Boolean);   
begin                
  Fcampo := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPnfemanifestonsu.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
