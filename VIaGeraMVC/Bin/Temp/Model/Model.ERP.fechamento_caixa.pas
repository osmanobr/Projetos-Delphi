unit Model.ERP.familia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfamilia = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_caixa : Integer;
    Fmovimento : TDateTime;
    Fdatahora : indefinido;
    Ftotal : Double;
    Ffechado : Boolean;
    Fid_usuario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setmovimento(const Value: TDateTime);
    procedure Setdatahora(const Value: indefinido);
    procedure Settotal(const Value: Double);
    procedure Setfechado(const Value: Boolean);
    procedure Setid_usuario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property movimento     : TDateTime read Fmovimento write Setmovimento;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property total     : Double read Ftotal write Settotal;
    property fechado     : Boolean read Ffechado write Setfechado;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfamilia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfamilia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfamilia(Model).id;
Self.Fid_empresa         := TModelERPfamilia(Model).id_empresa;
Self.Fid_caixa         := TModelERPfamilia(Model).id_caixa;
Self.Fmovimento         := TModelERPfamilia(Model).movimento;
Self.Fdatahora         := TModelERPfamilia(Model).datahora;
Self.Ftotal         := TModelERPfamilia(Model).total;
Self.Ffechado         := TModelERPfamilia(Model).fechado;
Self.Fid_usuario         := TModelERPfamilia(Model).id_usuario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfamilia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfamilia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfamilia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfamilia.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPfamilia.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPfamilia.Setmovimento(const Value: Boolean);   
begin                
  Fmovimento := Value;   
end;                 

procedure TModelERPfamilia.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPfamilia.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPfamilia.Setfechado(const Value: Boolean);   
begin                
  Ffechado := Value;   
end;                 

procedure TModelERPfamilia.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 


end.
