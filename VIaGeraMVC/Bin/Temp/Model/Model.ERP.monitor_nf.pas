unit Model.ERP.modulos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmodulos = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fid_movimento : Integer;
    Fstatus : indefinido;
    Fprioridade : indefinido;
    Frequest : indefinido;
    Fprocess : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setstatus(const Value: indefinido);
    procedure Setprioridade(const Value: indefinido);
    procedure Setrequest(const Value: indefinido);
    procedure Setprocess(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property status     : indefinido read Fstatus write Setstatus;
    property prioridade     : indefinido read Fprioridade write Setprioridade;
    property request     : indefinido read Frequest write Setrequest;
    property process     : indefinido read Fprocess write Setprocess;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmodulos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmodulos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmodulos(Model).id;
Self.Fid_venda         := TModelERPmodulos(Model).id_venda;
Self.Fid_movimento         := TModelERPmodulos(Model).id_movimento;
Self.Fstatus         := TModelERPmodulos(Model).status;
Self.Fprioridade         := TModelERPmodulos(Model).prioridade;
Self.Frequest         := TModelERPmodulos(Model).request;
Self.Fprocess         := TModelERPmodulos(Model).process;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmodulos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmodulos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmodulos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmodulos.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPmodulos.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPmodulos.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPmodulos.Setprioridade(const Value: Boolean);   
begin                
  Fprioridade := Value;   
end;                 

procedure TModelERPmodulos.Setrequest(const Value: Boolean);   
begin                
  Frequest := Value;   
end;                 

procedure TModelERPmodulos.Setprocess(const Value: Boolean);   
begin                
  Fprocess := Value;   
end;                 


end.
