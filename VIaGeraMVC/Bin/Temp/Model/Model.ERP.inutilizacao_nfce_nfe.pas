unit Model.ERP.insumos_pdv;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPinsumospdv = class(TModelBase)

private
    Fid : Integer;
    Fnfce_nfe : Integer;
    Fmodelo : Integer;
    Fserie : Integer;
    Fano : Integer;
    Fnum_ini : Integer;
    Fnum_fim : Integer;
    Fmotivo : WideString;
    Fdatahora : TDateTime;
    Fprotocolo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setnfce_nfe(const Value: Integer);
    procedure Setmodelo(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure Setano(const Value: Integer);
    procedure Setnum_ini(const Value: Integer);
    procedure Setnum_fim(const Value: Integer);
    procedure Setmotivo(const Value: WideString);
    procedure Setdatahora(const Value: TDateTime);
    procedure Setprotocolo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property nfce_nfe     : Integer read Fnfce_nfe write Setnfce_nfe;
    property modelo     : Integer read Fmodelo write Setmodelo;
    property serie     : Integer read Fserie write Setserie;
    property ano     : Integer read Fano write Setano;
    property num_ini     : Integer read Fnum_ini write Setnum_ini;
    property num_fim     : Integer read Fnum_fim write Setnum_fim;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property datahora     : TDateTime read Fdatahora write Setdatahora;
    property protocolo     : WideString read Fprotocolo write Setprotocolo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPinsumospdv.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPinsumospdv) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPinsumospdv(Model).id;
Self.Fnfce_nfe         := TModelERPinsumospdv(Model).nfce_nfe;
Self.Fmodelo         := TModelERPinsumospdv(Model).modelo;
Self.Fserie         := TModelERPinsumospdv(Model).serie;
Self.Fano         := TModelERPinsumospdv(Model).ano;
Self.Fnum_ini         := TModelERPinsumospdv(Model).num_ini;
Self.Fnum_fim         := TModelERPinsumospdv(Model).num_fim;
Self.Fmotivo         := TModelERPinsumospdv(Model).motivo;
Self.Fdatahora         := TModelERPinsumospdv(Model).datahora;
Self.Fprotocolo         := TModelERPinsumospdv(Model).protocolo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPinsumospdv.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPinsumospdv.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPinsumospdv.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPinsumospdv.Setnfce_nfe(const Value: Boolean);   
begin                
  Fnfce_nfe := Value;   
end;                 

procedure TModelERPinsumospdv.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPinsumospdv.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPinsumospdv.Setano(const Value: Boolean);   
begin                
  Fano := Value;   
end;                 

procedure TModelERPinsumospdv.Setnum_ini(const Value: Boolean);   
begin                
  Fnum_ini := Value;   
end;                 

procedure TModelERPinsumospdv.Setnum_fim(const Value: Boolean);   
begin                
  Fnum_fim := Value;   
end;                 

procedure TModelERPinsumospdv.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPinsumospdv.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPinsumospdv.Setprotocolo(const Value: Boolean);   
begin                
  Fprotocolo := Value;   
end;                 


end.
