unit Model.ERP.op_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPopitem = class(TModelBase)

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
 function TModelERPopitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPopitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPopitem(Model).id;
Self.Fid_empresa         := TModelERPopitem(Model).id_empresa;
Self.Fnome         := TModelERPopitem(Model).nome;
Self.Flin         := TModelERPopitem(Model).lin;
Self.Fcol         := TModelERPopitem(Model).col;
Self.Ffonte         := TModelERPopitem(Model).fonte;
Self.Ftamanho         := TModelERPopitem(Model).tamanho;
Self.Fimprime         := TModelERPopitem(Model).imprime;
Self.Fcampo         := TModelERPopitem(Model).campo;
Self.Ftabela         := TModelERPopitem(Model).tabela;
Self.Ftipo         := TModelERPopitem(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPopitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPopitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPopitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPopitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPopitem.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPopitem.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPopitem.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPopitem.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPopitem.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPopitem.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 

procedure TModelERPopitem.Setcampo(const Value: Boolean);   
begin                
  Fcampo := Value;   
end;                 

procedure TModelERPopitem.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPopitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
