unit Model.ERP.transf_deposito_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtransfdepositoitem = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_forma : Integer;
    Forigem : indefinido;
    Fid_origem : Integer;
    Fid_origem_conta : WideString;
    Fdestino : indefinido;
    Fid_destino : Integer;
    Fid_destino_conta : WideString;
    Fvalor : Double;
    Fhistorico : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setorigem(const Value: indefinido);
    procedure Setid_origem(const Value: Integer);
    procedure Setid_origem_conta(const Value: WideString);
    procedure Setdestino(const Value: indefinido);
    procedure Setid_destino(const Value: Integer);
    procedure Setid_destino_conta(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Sethistorico(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property origem     : indefinido read Forigem write Setorigem;
    property id_origem     : Integer read Fid_origem write Setid_origem;
    property id_origem_conta     : WideString read Fid_origem_conta write Setid_origem_conta;
    property destino     : indefinido read Fdestino write Setdestino;
    property id_destino     : Integer read Fid_destino write Setid_destino;
    property id_destino_conta     : WideString read Fid_destino_conta write Setid_destino_conta;
    property valor     : Double read Fvalor write Setvalor;
    property historico     : indefinido read Fhistorico write Sethistorico;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtransfdepositoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtransfdepositoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtransfdepositoitem(Model).id;
Self.Fdata         := TModelERPtransfdepositoitem(Model).data;
Self.Fid_forma         := TModelERPtransfdepositoitem(Model).id_forma;
Self.Forigem         := TModelERPtransfdepositoitem(Model).origem;
Self.Fid_origem         := TModelERPtransfdepositoitem(Model).id_origem;
Self.Fid_origem_conta         := TModelERPtransfdepositoitem(Model).id_origem_conta;
Self.Fdestino         := TModelERPtransfdepositoitem(Model).destino;
Self.Fid_destino         := TModelERPtransfdepositoitem(Model).id_destino;
Self.Fid_destino_conta         := TModelERPtransfdepositoitem(Model).id_destino_conta;
Self.Fvalor         := TModelERPtransfdepositoitem(Model).valor;
Self.Fhistorico         := TModelERPtransfdepositoitem(Model).historico;
Self.Fclick         := TModelERPtransfdepositoitem(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtransfdepositoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtransfdepositoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtransfdepositoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setorigem(const Value: Boolean);   
begin                
  Forigem := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setid_origem(const Value: Boolean);   
begin                
  Fid_origem := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setid_origem_conta(const Value: Boolean);   
begin                
  Fid_origem_conta := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setdestino(const Value: Boolean);   
begin                
  Fdestino := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setid_destino(const Value: Boolean);   
begin                
  Fid_destino := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setid_destino_conta(const Value: Boolean);   
begin                
  Fid_destino_conta := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Sethistorico(const Value: Boolean);   
begin                
  Fhistorico := Value;   
end;                 

procedure TModelERPtransfdepositoitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
