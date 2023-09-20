unit Model.ERP.carga_venda;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcargavenda = class(TModelBase)

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
 function TModelERPcargavenda.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcargavenda) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcargavenda(Model).id;
Self.Fid_empresa         := TModelERPcargavenda(Model).id_empresa;
Self.Fnome         := TModelERPcargavenda(Model).nome;
Self.Flin         := TModelERPcargavenda(Model).lin;
Self.Fcol         := TModelERPcargavenda(Model).col;
Self.Ffonte         := TModelERPcargavenda(Model).fonte;
Self.Ftamanho         := TModelERPcargavenda(Model).tamanho;
Self.Fimprime         := TModelERPcargavenda(Model).imprime;
Self.Fcampo         := TModelERPcargavenda(Model).campo;
Self.Ftabela         := TModelERPcargavenda(Model).tabela;
Self.Ftipo         := TModelERPcargavenda(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcargavenda.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcargavenda.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcargavenda.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcargavenda.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcargavenda.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPcargavenda.Setlin(const Value: Boolean);   
begin                
  Flin := Value;   
end;                 

procedure TModelERPcargavenda.Setcol(const Value: Boolean);   
begin                
  Fcol := Value;   
end;                 

procedure TModelERPcargavenda.Setfonte(const Value: Boolean);   
begin                
  Ffonte := Value;   
end;                 

procedure TModelERPcargavenda.Settamanho(const Value: Boolean);   
begin                
  Ftamanho := Value;   
end;                 

procedure TModelERPcargavenda.Setimprime(const Value: Boolean);   
begin                
  Fimprime := Value;   
end;                 

procedure TModelERPcargavenda.Setcampo(const Value: Boolean);   
begin                
  Fcampo := Value;   
end;                 

procedure TModelERPcargavenda.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPcargavenda.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
