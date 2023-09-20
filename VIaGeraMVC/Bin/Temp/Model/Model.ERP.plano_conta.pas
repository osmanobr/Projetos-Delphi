unit Model.ERP.plano_celular;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPplanocelular = class(TModelBase)

private
    Fconta : WideString;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fcusto_operacional : Boolean;
    Fdebcre : WideString;
    Fclick : Boolean;
    Finversao_plano_conta : Boolean;
    Fativo : WideString;
    Fdre : Boolean;

    procedure Setconta(const Value: WideString);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setcusto_operacional(const Value: Boolean);
    procedure Setdebcre(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setinversao_plano_conta(const Value: Boolean);
    procedure Setativo(const Value: WideString);
    procedure Setdre(const Value: Boolean);

public
    property conta     : WideString read Fconta write Setconta;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property custo_operacional     : Boolean read Fcusto_operacional write Setcusto_operacional;
    property debcre     : WideString read Fdebcre write Setdebcre;
    property click     : Boolean read Fclick write Setclick;
    property inversao_plano_conta     : Boolean read Finversao_plano_conta write Setinversao_plano_conta;
    property ativo     : WideString read Fativo write Setativo;
    property dre     : Boolean read Fdre write Setdre;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPplanocelular.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPplanocelular) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fconta         := TModelERPplanocelular(Model).conta;
Self.Fid_empresa         := TModelERPplanocelular(Model).id_empresa;
Self.Fnome         := TModelERPplanocelular(Model).nome;
Self.Fcusto_operacional         := TModelERPplanocelular(Model).custo_operacional;
Self.Fdebcre         := TModelERPplanocelular(Model).debcre;
Self.Fclick         := TModelERPplanocelular(Model).click;
Self.Finversao_plano_conta         := TModelERPplanocelular(Model).inversao_plano_conta;
Self.Fativo         := TModelERPplanocelular(Model).ativo;
Self.Fdre         := TModelERPplanocelular(Model).dre;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPplanocelular.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPplanocelular.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPplanocelular.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPplanocelular.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPplanocelular.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPplanocelular.Setcusto_operacional(const Value: Boolean);   
begin                
  Fcusto_operacional := Value;   
end;                 

procedure TModelERPplanocelular.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPplanocelular.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPplanocelular.Setinversao_plano_conta(const Value: Boolean);   
begin                
  Finversao_plano_conta := Value;   
end;                 

procedure TModelERPplanocelular.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPplanocelular.Setdre(const Value: Boolean);   
begin                
  Fdre := Value;   
end;                 


end.
