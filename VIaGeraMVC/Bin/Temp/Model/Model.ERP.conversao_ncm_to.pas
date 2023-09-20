unit Model.ERP.controle_validade;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontrolevalidade = class(TModelBase)

private
    Fid : Integer;
    Fncm : WideString;
    Fmva_4 : Double;
    Fmva_7 : Double;
    Fmva_12 : Double;
    Facumulativo : Double;

    procedure Setid(const Value: Integer);
    procedure Setncm(const Value: WideString);
    procedure Setmva_4(const Value: Double);
    procedure Setmva_7(const Value: Double);
    procedure Setmva_12(const Value: Double);
    procedure Setacumulativo(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property ncm     : WideString read Fncm write Setncm;
    property mva_4     : Double read Fmva_4 write Setmva_4;
    property mva_7     : Double read Fmva_7 write Setmva_7;
    property mva_12     : Double read Fmva_12 write Setmva_12;
    property acumulativo     : Double read Facumulativo write Setacumulativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontrolevalidade.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontrolevalidade) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontrolevalidade(Model).id;
Self.Fncm         := TModelERPcontrolevalidade(Model).ncm;
Self.Fmva_4         := TModelERPcontrolevalidade(Model).mva_4;
Self.Fmva_7         := TModelERPcontrolevalidade(Model).mva_7;
Self.Fmva_12         := TModelERPcontrolevalidade(Model).mva_12;
Self.Facumulativo         := TModelERPcontrolevalidade(Model).acumulativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontrolevalidade.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontrolevalidade.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontrolevalidade.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontrolevalidade.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPcontrolevalidade.Setmva_4(const Value: Boolean);   
begin                
  Fmva_4 := Value;   
end;                 

procedure TModelERPcontrolevalidade.Setmva_7(const Value: Boolean);   
begin                
  Fmva_7 := Value;   
end;                 

procedure TModelERPcontrolevalidade.Setmva_12(const Value: Boolean);   
begin                
  Fmva_12 := Value;   
end;                 

procedure TModelERPcontrolevalidade.Setacumulativo(const Value: Boolean);   
begin                
  Facumulativo := Value;   
end;                 


end.
