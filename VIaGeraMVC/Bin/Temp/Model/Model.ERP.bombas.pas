unit Model.ERP.boleto_automatico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPboletoautomatico = class(TModelBase)

private
    Fid : Integer;
    Fserie : WideString;
    Ffabricante : WideString;
    Fmodelo : WideString;
    Ftipo_medicao : WideString;
    Flacre : WideString;
    Fdt_aplic : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setserie(const Value: WideString);
    procedure Setfabricante(const Value: WideString);
    procedure Setmodelo(const Value: WideString);
    procedure Settipo_medicao(const Value: WideString);
    procedure Setlacre(const Value: WideString);
    procedure Setdt_aplic(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property serie     : WideString read Fserie write Setserie;
    property fabricante     : WideString read Ffabricante write Setfabricante;
    property modelo     : WideString read Fmodelo write Setmodelo;
    property tipo_medicao     : WideString read Ftipo_medicao write Settipo_medicao;
    property lacre     : WideString read Flacre write Setlacre;
    property dt_aplic     : TDateTime read Fdt_aplic write Setdt_aplic;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPboletoautomatico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPboletoautomatico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPboletoautomatico(Model).id;
Self.Fserie         := TModelERPboletoautomatico(Model).serie;
Self.Ffabricante         := TModelERPboletoautomatico(Model).fabricante;
Self.Fmodelo         := TModelERPboletoautomatico(Model).modelo;
Self.Ftipo_medicao         := TModelERPboletoautomatico(Model).tipo_medicao;
Self.Flacre         := TModelERPboletoautomatico(Model).lacre;
Self.Fdt_aplic         := TModelERPboletoautomatico(Model).dt_aplic;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPboletoautomatico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPboletoautomatico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPboletoautomatico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPboletoautomatico.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPboletoautomatico.Setfabricante(const Value: Boolean);   
begin                
  Ffabricante := Value;   
end;                 

procedure TModelERPboletoautomatico.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPboletoautomatico.Settipo_medicao(const Value: Boolean);   
begin                
  Ftipo_medicao := Value;   
end;                 

procedure TModelERPboletoautomatico.Setlacre(const Value: Boolean);   
begin                
  Flacre := Value;   
end;                 

procedure TModelERPboletoautomatico.Setdt_aplic(const Value: Boolean);   
begin                
  Fdt_aplic := Value;   
end;                 


end.
