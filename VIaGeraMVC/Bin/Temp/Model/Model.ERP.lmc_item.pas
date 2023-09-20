unit Model.ERP.lmc;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlmc = class(TModelBase)

private
    Fid : Integer;
    Fid_lmc : Integer;
    Fid_bico : Integer;
    Fid_tanque : Integer;
    Festoq_abert : Double;
    Festoq_fech : Double;
    Fvenda_bico : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_lmc(const Value: Integer);
    procedure Setid_bico(const Value: Integer);
    procedure Setid_tanque(const Value: Integer);
    procedure Setestoq_abert(const Value: Double);
    procedure Setestoq_fech(const Value: Double);
    procedure Setvenda_bico(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_lmc     : Integer read Fid_lmc write Setid_lmc;
    property id_bico     : Integer read Fid_bico write Setid_bico;
    property id_tanque     : Integer read Fid_tanque write Setid_tanque;
    property estoq_abert     : Double read Festoq_abert write Setestoq_abert;
    property estoq_fech     : Double read Festoq_fech write Setestoq_fech;
    property venda_bico     : Double read Fvenda_bico write Setvenda_bico;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlmc.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlmc) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlmc(Model).id;
Self.Fid_lmc         := TModelERPlmc(Model).id_lmc;
Self.Fid_bico         := TModelERPlmc(Model).id_bico;
Self.Fid_tanque         := TModelERPlmc(Model).id_tanque;
Self.Festoq_abert         := TModelERPlmc(Model).estoq_abert;
Self.Festoq_fech         := TModelERPlmc(Model).estoq_fech;
Self.Fvenda_bico         := TModelERPlmc(Model).venda_bico;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlmc.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlmc.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlmc.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlmc.Setid_lmc(const Value: Boolean);   
begin                
  Fid_lmc := Value;   
end;                 

procedure TModelERPlmc.Setid_bico(const Value: Boolean);   
begin                
  Fid_bico := Value;   
end;                 

procedure TModelERPlmc.Setid_tanque(const Value: Boolean);   
begin                
  Fid_tanque := Value;   
end;                 

procedure TModelERPlmc.Setestoq_abert(const Value: Boolean);   
begin                
  Festoq_abert := Value;   
end;                 

procedure TModelERPlmc.Setestoq_fech(const Value: Boolean);   
begin                
  Festoq_fech := Value;   
end;                 

procedure TModelERPlmc.Setvenda_bico(const Value: Boolean);   
begin                
  Fvenda_bico := Value;   
end;                 


end.
