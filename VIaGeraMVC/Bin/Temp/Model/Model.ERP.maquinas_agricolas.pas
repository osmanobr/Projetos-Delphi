unit Model.ERP.mapa_resumo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmaparesumo = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fmodelo : WideString;
    Fano : WideString;
    Fmarca : WideString;
    Fclick : Boolean;
    Fid_empresa : Integer;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setmodelo(const Value: WideString);
    procedure Setano(const Value: WideString);
    procedure Setmarca(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setid_empresa(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property modelo     : WideString read Fmodelo write Setmodelo;
    property ano     : WideString read Fano write Setano;
    property marca     : WideString read Fmarca write Setmarca;
    property click     : Boolean read Fclick write Setclick;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmaparesumo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmaparesumo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmaparesumo(Model).id;
Self.Fnome         := TModelERPmaparesumo(Model).nome;
Self.Fmodelo         := TModelERPmaparesumo(Model).modelo;
Self.Fano         := TModelERPmaparesumo(Model).ano;
Self.Fmarca         := TModelERPmaparesumo(Model).marca;
Self.Fclick         := TModelERPmaparesumo(Model).click;
Self.Fid_empresa         := TModelERPmaparesumo(Model).id_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmaparesumo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmaparesumo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmaparesumo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmaparesumo.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPmaparesumo.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPmaparesumo.Setano(const Value: Boolean);   
begin                
  Fano := Value;   
end;                 

procedure TModelERPmaparesumo.Setmarca(const Value: Boolean);   
begin                
  Fmarca := Value;   
end;                 

procedure TModelERPmaparesumo.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPmaparesumo.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 


end.
