unit Model.ERP.bicos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbicos = class(TModelBase)

private
    Fid : Integer;
    Fdescricao : WideString;
    Flin : Integer;
    Fcol : Integer;
    Ffonte : WideString;
    Ftamanho : WideString;
    Fimprime : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setlin(const Value: Integer);
    procedure Setcol(const Value: Integer);
    procedure Setfonte(const Value: WideString);
    procedure Settamanho(const Value: WideString);
    procedure Setimprime(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property lin     : Integer read Flin write Setlin;
    property col     : Integer read Fcol write Setcol;
    property fonte     : WideString read Ffonte write Setfonte;
    property tamanho     : WideString read Ftamanho write Settamanho;
    property imprime     : WideString read Fimprime write Setimprime;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbicos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbicos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbicos(Model).id;
Self.Fdescricao         := TModelERPbicos(Model).descricao;
Self.Flin         := TModelERPbicos(Model).lin;
Self.Fcol         := TModelERPbicos(Model).col;
Self.Ffonte         := TModelERPbicos(Model).fonte;
Self.Ftamanho         := TModelERPbicos(Model).tamanho;
Self.Fimprime         := TModelERPbicos(Model).imprime;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbicos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbicos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbicos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbicos.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPbicos.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPbicos.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPbicos.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPbicos.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPbicos.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 


end.
