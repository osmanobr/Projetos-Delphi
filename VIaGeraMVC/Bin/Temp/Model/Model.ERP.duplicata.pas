unit Model.ERP.documentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdocumentos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
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
    procedure Setid_empresa(const Value: Integer);
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
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
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
 function TModelERPdocumentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdocumentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdocumentos(Model).id;
Self.Fid_empresa         := TModelERPdocumentos(Model).id_empresa;
Self.Fnome         := TModelERPdocumentos(Model).nome;
Self.Flin         := TModelERPdocumentos(Model).lin;
Self.Fcol         := TModelERPdocumentos(Model).col;
Self.Ffonte         := TModelERPdocumentos(Model).fonte;
Self.Ftamanho         := TModelERPdocumentos(Model).tamanho;
Self.Fimprime         := TModelERPdocumentos(Model).imprime;
Self.Fcampo         := TModelERPdocumentos(Model).campo;
Self.Ftabela         := TModelERPdocumentos(Model).tabela;
Self.Ftipo         := TModelERPdocumentos(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdocumentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdocumentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdocumentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdocumentos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdocumentos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPdocumentos.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPdocumentos.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPdocumentos.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPdocumentos.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPdocumentos.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 

procedure TModelERPdocumentos.Setcampo(const Value: Boolean);   
begin                
  Fcampo := Value;   
end;                 

procedure TModelERPdocumentos.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPdocumentos.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
