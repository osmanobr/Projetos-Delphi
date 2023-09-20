unit Model.ERP.etiqueta;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPetiqueta = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Flin : indefinido;
    Fcol : indefinido;
    Ffonte : WideString;
    Ftamanho : WideString;
    Fimprime : WideString;
    Fcampo : WideString;
    Ftabela : WideString;
    Ftipo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setlin(const Value: indefinido);
    procedure Setcol(const Value: indefinido);
    procedure Setfonte(const Value: WideString);
    procedure Settamanho(const Value: WideString);
    procedure Setimprime(const Value: WideString);
    procedure Setcampo(const Value: WideString);
    procedure Settabela(const Value: WideString);
    procedure Settipo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property lin     : indefinido read Flin write Setlin;
    property col     : indefinido read Fcol write Setcol;
    property fonte     : WideString read Ffonte write Setfonte;
    property tamanho     : WideString read Ftamanho write Settamanho;
    property imprime     : WideString read Fimprime write Setimprime;
    property campo     : WideString read Fcampo write Setcampo;
    property tabela     : WideString read Ftabela write Settabela;
    property tipo     : WideString read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPetiqueta.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPetiqueta) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPetiqueta(Model).id;
Self.Fnome         := TModelERPetiqueta(Model).nome;
Self.Flin         := TModelERPetiqueta(Model).lin;
Self.Fcol         := TModelERPetiqueta(Model).col;
Self.Ffonte         := TModelERPetiqueta(Model).fonte;
Self.Ftamanho         := TModelERPetiqueta(Model).tamanho;
Self.Fimprime         := TModelERPetiqueta(Model).imprime;
Self.Fcampo         := TModelERPetiqueta(Model).campo;
Self.Ftabela         := TModelERPetiqueta(Model).tabela;
Self.Ftipo         := TModelERPetiqueta(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPetiqueta.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPetiqueta.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPetiqueta.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPetiqueta.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPetiqueta.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPetiqueta.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPetiqueta.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPetiqueta.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPetiqueta.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 

procedure TModelERPetiqueta.Setcampo(const Value: Boolean);   
begin                
  Fcampo := Value;   
end;                 

procedure TModelERPetiqueta.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPetiqueta.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
