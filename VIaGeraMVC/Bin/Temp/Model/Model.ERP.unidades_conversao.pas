unit Model.ERP.uf;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPuf = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fsigla : indefinido;
    Fdescricao : indefinido;
    Fassociacao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setsigla(const Value: indefinido);
    procedure Setdescricao(const Value: indefinido);
    procedure Setassociacao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property sigla     : indefinido read Fsigla write Setsigla;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property associacao     : indefinido read Fassociacao write Setassociacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPuf.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPuf) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPuf(Model).id;
Self.Fid_empresa         := TModelERPuf(Model).id_empresa;
Self.Fsigla         := TModelERPuf(Model).sigla;
Self.Fdescricao         := TModelERPuf(Model).descricao;
Self.Fassociacao         := TModelERPuf(Model).associacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPuf.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPuf.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPuf.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPuf.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPuf.Setsigla(const Value: Boolean);   
begin                
  Fsigla := Value;   
end;                 

procedure TModelERPuf.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPuf.Setassociacao(const Value: Boolean);   
begin                
  Fassociacao := Value;   
end;                 


end.
