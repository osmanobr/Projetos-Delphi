unit Model.ERP.leitura_bloco;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleiturabloco = class(TModelBase)

private
    Fid : Integer;
    Fid_apartamento : Integer;
    Fmedicao_inicial : Double;
    Fmedicao_final : Double;
    Fmetros : Double;
    Fconsumo : Double;
    Ftotal : Double;
    Fdatahora : indefinido;
    Fdatahora_leitura : indefinido;
    Fid_lote : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_apartamento(const Value: Integer);
    procedure Setmedicao_inicial(const Value: Double);
    procedure Setmedicao_final(const Value: Double);
    procedure Setmetros(const Value: Double);
    procedure Setconsumo(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setdatahora(const Value: indefinido);
    procedure Setdatahora_leitura(const Value: indefinido);
    procedure Setid_lote(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_apartamento     : Integer read Fid_apartamento write Setid_apartamento;
    property medicao_inicial     : Double read Fmedicao_inicial write Setmedicao_inicial;
    property medicao_final     : Double read Fmedicao_final write Setmedicao_final;
    property metros     : Double read Fmetros write Setmetros;
    property consumo     : Double read Fconsumo write Setconsumo;
    property total     : Double read Ftotal write Settotal;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property datahora_leitura     : indefinido read Fdatahora_leitura write Setdatahora_leitura;
    property id_lote     : Integer read Fid_lote write Setid_lote;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleiturabloco.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleiturabloco) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleiturabloco(Model).id;
Self.Fid_apartamento         := TModelERPleiturabloco(Model).id_apartamento;
Self.Fmedicao_inicial         := TModelERPleiturabloco(Model).medicao_inicial;
Self.Fmedicao_final         := TModelERPleiturabloco(Model).medicao_final;
Self.Fmetros         := TModelERPleiturabloco(Model).metros;
Self.Fconsumo         := TModelERPleiturabloco(Model).consumo;
Self.Ftotal         := TModelERPleiturabloco(Model).total;
Self.Fdatahora         := TModelERPleiturabloco(Model).datahora;
Self.Fdatahora_leitura         := TModelERPleiturabloco(Model).datahora_leitura;
Self.Fid_lote         := TModelERPleiturabloco(Model).id_lote;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleiturabloco.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleiturabloco.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleiturabloco.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleiturabloco.Setid_apartamento(const Value: Boolean);   
begin                
  Fid_apartamento := Value;   
end;                 

procedure TModelERPleiturabloco.Setmedicao_inicial(const Value: Boolean);   
begin                
  Fmedicao_inicial := Value;   
end;                 

procedure TModelERPleiturabloco.Setmedicao_final(const Value: Boolean);   
begin                
  Fmedicao_final := Value;   
end;                 

procedure TModelERPleiturabloco.Setmetros(const Value: Boolean);   
begin                
  Fmetros := Value;   
end;                 

procedure TModelERPleiturabloco.Setconsumo(const Value: Boolean);   
begin                
  Fconsumo := Value;   
end;                 

procedure TModelERPleiturabloco.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPleiturabloco.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPleiturabloco.Setdatahora_leitura(const Value: Boolean);   
begin                
  Fdatahora_leitura := Value;   
end;                 

procedure TModelERPleiturabloco.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 


end.
