unit Model.ERP.fechamento_caixa_transacoes;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfechamentocaixatransacoes = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfechamentocaixatransacoes.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfechamentocaixatransacoes) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfechamentocaixatransacoes(Model).id;
Self.Fid_empresa         := TModelERPfechamentocaixatransacoes(Model).id_empresa;
Self.Fnome         := TModelERPfechamentocaixatransacoes(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfechamentocaixatransacoes.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfechamentocaixatransacoes.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfechamentocaixatransacoes.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfechamentocaixatransacoes.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPfechamentocaixatransacoes.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
