unit Model.ERP.plano_contas_contabeis;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPplanocontascontabeis = class(TModelBase)

private
    Fid : Integer;
    Fuf : WideString;
    Fgac : Double;
    Fgap : Double;
    Fdiesel_s10 : Double;
    Foleo_diesel : Double;
    Fgpl_p13 : Double;
    Fgpl : Double;
    Fqav : Double;
    Faehc : Double;
    Fgnv : Double;
    Fgni : Double;
    Foleo_combustivel : Double;

    procedure Setid(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Setgac(const Value: Double);
    procedure Setgap(const Value: Double);
    procedure Setdiesel_s10(const Value: Double);
    procedure Setoleo_diesel(const Value: Double);
    procedure Setgpl_p13(const Value: Double);
    procedure Setgpl(const Value: Double);
    procedure Setqav(const Value: Double);
    procedure Setaehc(const Value: Double);
    procedure Setgnv(const Value: Double);
    procedure Setgni(const Value: Double);
    procedure Setoleo_combustivel(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property uf     : WideString read Fuf write Setuf;
    property gac     : Double read Fgac write Setgac;
    property gap     : Double read Fgap write Setgap;
    property diesel_s10     : Double read Fdiesel_s10 write Setdiesel_s10;
    property oleo_diesel     : Double read Foleo_diesel write Setoleo_diesel;
    property gpl_p13     : Double read Fgpl_p13 write Setgpl_p13;
    property gpl     : Double read Fgpl write Setgpl;
    property qav     : Double read Fqav write Setqav;
    property aehc     : Double read Faehc write Setaehc;
    property gnv     : Double read Fgnv write Setgnv;
    property gni     : Double read Fgni write Setgni;
    property oleo_combustivel     : Double read Foleo_combustivel write Setoleo_combustivel;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPplanocontascontabeis.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPplanocontascontabeis) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPplanocontascontabeis(Model).id;
Self.Fuf         := TModelERPplanocontascontabeis(Model).uf;
Self.Fgac         := TModelERPplanocontascontabeis(Model).gac;
Self.Fgap         := TModelERPplanocontascontabeis(Model).gap;
Self.Fdiesel_s10         := TModelERPplanocontascontabeis(Model).diesel_s10;
Self.Foleo_diesel         := TModelERPplanocontascontabeis(Model).oleo_diesel;
Self.Fgpl_p13         := TModelERPplanocontascontabeis(Model).gpl_p13;
Self.Fgpl         := TModelERPplanocontascontabeis(Model).gpl;
Self.Fqav         := TModelERPplanocontascontabeis(Model).qav;
Self.Faehc         := TModelERPplanocontascontabeis(Model).aehc;
Self.Fgnv         := TModelERPplanocontascontabeis(Model).gnv;
Self.Fgni         := TModelERPplanocontascontabeis(Model).gni;
Self.Foleo_combustivel         := TModelERPplanocontascontabeis(Model).oleo_combustivel;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPplanocontascontabeis.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPplanocontascontabeis.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPplanocontascontabeis.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setgac(const Value: Boolean);   
begin                
  Fgac := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setgap(const Value: Boolean);   
begin                
  Fgap := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setdiesel_s10(const Value: Boolean);   
begin                
  Fdiesel_s10 := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setoleo_diesel(const Value: Boolean);   
begin                
  Foleo_diesel := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setgpl_p13(const Value: Boolean);   
begin                
  Fgpl_p13 := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setgpl(const Value: Boolean);   
begin                
  Fgpl := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setqav(const Value: Boolean);   
begin                
  Fqav := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setaehc(const Value: Boolean);   
begin                
  Faehc := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setgnv(const Value: Boolean);   
begin                
  Fgnv := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setgni(const Value: Boolean);   
begin                
  Fgni := Value;   
end;                 

procedure TModelERPplanocontascontabeis.Setoleo_combustivel(const Value: Boolean);   
begin                
  Foleo_combustivel := Value;   
end;                 


end.
