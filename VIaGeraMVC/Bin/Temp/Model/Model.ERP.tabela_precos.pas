unit Model.ERP.supervisor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPsupervisor = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fentrada : indefinido;
    Fpreco : indefinido;
    Fparcelas : Integer;
    Freajuste_tipo : indefinido;
    Freajuste_percentual : Double;
    Fclick : Boolean;
    Fintervalo : Integer;
    Fid_forma : Integer;
    Ffinaliza : Boolean;
    Fformas_novo : WideString;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setentrada(const Value: indefinido);
    procedure Setpreco(const Value: indefinido);
    procedure Setparcelas(const Value: Integer);
    procedure Setreajuste_tipo(const Value: indefinido);
    procedure Setreajuste_percentual(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setintervalo(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setfinaliza(const Value: Boolean);
    procedure Setformas_novo(const Value: WideString);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property entrada     : indefinido read Fentrada write Setentrada;
    property preco     : indefinido read Fpreco write Setpreco;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property reajuste_tipo     : indefinido read Freajuste_tipo write Setreajuste_tipo;
    property reajuste_percentual     : Double read Freajuste_percentual write Setreajuste_percentual;
    property click     : Boolean read Fclick write Setclick;
    property intervalo     : Integer read Fintervalo write Setintervalo;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property finaliza     : Boolean read Ffinaliza write Setfinaliza;
    property formas_novo     : WideString read Fformas_novo write Setformas_novo;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPsupervisor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPsupervisor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPsupervisor(Model).id;
Self.Fid_empresa         := TModelERPsupervisor(Model).id_empresa;
Self.Fnome         := TModelERPsupervisor(Model).nome;
Self.Fentrada         := TModelERPsupervisor(Model).entrada;
Self.Fpreco         := TModelERPsupervisor(Model).preco;
Self.Fparcelas         := TModelERPsupervisor(Model).parcelas;
Self.Freajuste_tipo         := TModelERPsupervisor(Model).reajuste_tipo;
Self.Freajuste_percentual         := TModelERPsupervisor(Model).reajuste_percentual;
Self.Fclick         := TModelERPsupervisor(Model).click;
Self.Fintervalo         := TModelERPsupervisor(Model).intervalo;
Self.Fid_forma         := TModelERPsupervisor(Model).id_forma;
Self.Ffinaliza         := TModelERPsupervisor(Model).finaliza;
Self.Fformas_novo         := TModelERPsupervisor(Model).formas_novo;
Self.Fativo         := TModelERPsupervisor(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPsupervisor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPsupervisor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPsupervisor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPsupervisor.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPsupervisor.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPsupervisor.Setentrada(const Value: Boolean);   
begin                
  Fentrada := Value;   
end;                 

procedure TModelERPsupervisor.Setpreco(const Value: Boolean);   
begin                
  Fpreco := Value;   
end;                 

procedure TModelERPsupervisor.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPsupervisor.Setreajuste_tipo(const Value: Boolean);   
begin                
  Freajuste_tipo := Value;   
end;                 

procedure TModelERPsupervisor.Setreajuste_percentual(const Value: Boolean);   
begin                
  Freajuste_percentual := Value;   
end;                 

procedure TModelERPsupervisor.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPsupervisor.Setintervalo(const Value: Boolean);   
begin                
  Fintervalo := Value;   
end;                 

procedure TModelERPsupervisor.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPsupervisor.Setfinaliza(const Value: Boolean);   
begin                
  Ffinaliza := Value;   
end;                 

procedure TModelERPsupervisor.Setformas_novo(const Value: Boolean);   
begin                
  Fformas_novo := Value;   
end;                 

procedure TModelERPsupervisor.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
