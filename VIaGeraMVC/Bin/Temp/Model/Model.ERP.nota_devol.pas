unit Model.ERP.nota;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPnota = class(TModelBase)

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
 function TModelERPnota.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPnota) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPnota(Model).id;
Self.Fid_empresa         := TModelERPnota(Model).id_empresa;
Self.Fnome         := TModelERPnota(Model).nome;
Self.Flin         := TModelERPnota(Model).lin;
Self.Fcol         := TModelERPnota(Model).col;
Self.Ffonte         := TModelERPnota(Model).fonte;
Self.Ftamanho         := TModelERPnota(Model).tamanho;
Self.Fimprime         := TModelERPnota(Model).imprime;
Self.Fcampo         := TModelERPnota(Model).campo;
Self.Ftabela         := TModelERPnota(Model).tabela;
Self.Ftipo         := TModelERPnota(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPnota.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPnota.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPnota.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPnota.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPnota.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPnota.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPnota.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPnota.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPnota.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPnota.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 

procedure TModelERPnota.Setcampo(const Value: Boolean);   
begin                
  Fcampo := Value;   
end;                 

procedure TModelERPnota.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPnota.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
