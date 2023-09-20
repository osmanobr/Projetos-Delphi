unit Model.ERP.ncm;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPncm = class(TModelBase)

private
    Fid : Integer;
    Fncm : indefinido;
    Fexcluido : Boolean;
    Fadicionado : Boolean;
    Fdatahora : indefinido;
    Fsubstituido : indefinido;
    Fprodutos : indefinido;
    Fdescricao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setncm(const Value: indefinido);
    procedure Setexcluido(const Value: Boolean);
    procedure Setadicionado(const Value: Boolean);
    procedure Setdatahora(const Value: indefinido);
    procedure Setsubstituido(const Value: indefinido);
    procedure Setprodutos(const Value: indefinido);
    procedure Setdescricao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property ncm     : indefinido read Fncm write Setncm;
    property excluido     : Boolean read Fexcluido write Setexcluido;
    property adicionado     : Boolean read Fadicionado write Setadicionado;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property substituido     : indefinido read Fsubstituido write Setsubstituido;
    property produtos     : indefinido read Fprodutos write Setprodutos;
    property descricao     : indefinido read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPncm.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPncm) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPncm(Model).id;
Self.Fncm         := TModelERPncm(Model).ncm;
Self.Fexcluido         := TModelERPncm(Model).excluido;
Self.Fadicionado         := TModelERPncm(Model).adicionado;
Self.Fdatahora         := TModelERPncm(Model).datahora;
Self.Fsubstituido         := TModelERPncm(Model).substituido;
Self.Fprodutos         := TModelERPncm(Model).produtos;
Self.Fdescricao         := TModelERPncm(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPncm.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPncm.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPncm.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPncm.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPncm.Setexcluido(const Value: Boolean);   
begin                
  Fexcluido := Value;   
end;                 

procedure TModelERPncm.Setadicionado(const Value: Boolean);   
begin                
  Fadicionado := Value;   
end;                 

procedure TModelERPncm.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPncm.Setsubstituido(const Value: Boolean);   
begin                
  Fsubstituido := Value;   
end;                 

procedure TModelERPncm.Setprodutos(const Value: Boolean);   
begin                
  Fprodutos := Value;   
end;                 

procedure TModelERPncm.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
