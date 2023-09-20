unit Model.ERP.terminal_center;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPterminalcenter = class(TModelBase)

private
    Fid : Integer;
    Fid_terminal_origem : Integer;
    Fid_terminal_destino : Integer;
    Fdatahora : indefinido;
    Fsend_message : indefinido;
    Floja : Integer;
    Fsend : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_terminal_origem(const Value: Integer);
    procedure Setid_terminal_destino(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);
    procedure Setsend_message(const Value: indefinido);
    procedure Setloja(const Value: Integer);
    procedure Setsend(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_terminal_origem     : Integer read Fid_terminal_origem write Setid_terminal_origem;
    property id_terminal_destino     : Integer read Fid_terminal_destino write Setid_terminal_destino;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property send_message     : indefinido read Fsend_message write Setsend_message;
    property loja     : Integer read Floja write Setloja;
    property send     : Boolean read Fsend write Setsend;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPterminalcenter.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPterminalcenter) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPterminalcenter(Model).id;
Self.Fid_terminal_origem         := TModelERPterminalcenter(Model).id_terminal_origem;
Self.Fid_terminal_destino         := TModelERPterminalcenter(Model).id_terminal_destino;
Self.Fdatahora         := TModelERPterminalcenter(Model).datahora;
Self.Fsend_message         := TModelERPterminalcenter(Model).send_message;
Self.Floja         := TModelERPterminalcenter(Model).loja;
Self.Fsend         := TModelERPterminalcenter(Model).send;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPterminalcenter.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPterminalcenter.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPterminalcenter.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPterminalcenter.Setid_terminal_origem(const Value: Boolean);   
begin                
  Fid_terminal_origem := Value;   
end;                 

procedure TModelERPterminalcenter.Setid_terminal_destino(const Value: Boolean);   
begin                
  Fid_terminal_destino := Value;   
end;                 

procedure TModelERPterminalcenter.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPterminalcenter.Setsend_message(const Value: Boolean);   
begin                
  Fsend_message := Value;   
end;                 

procedure TModelERPterminalcenter.Setloja(const Value: Boolean);   
begin                
  Floja := Value;   
end;                 

procedure TModelERPterminalcenter.Setsend(const Value: Boolean);   
begin                
  Fsend := Value;   
end;                 


end.
