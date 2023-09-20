unit Model.ERP.os_duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPosduplicata = class(TModelBase)

private
    Fid : Integer;
    Fid_os : Integer;
    Fitem : Integer;
    Fdescricao : WideString;
    Fnum_serie : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setitem(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setnum_serie(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_os     : Integer read Fid_os write Setid_os;
    property item     : Integer read Fitem write Setitem;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property num_serie     : WideString read Fnum_serie write Setnum_serie;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPosduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPosduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPosduplicata(Model).id;
Self.Fid_os         := TModelERPosduplicata(Model).id_os;
Self.Fitem         := TModelERPosduplicata(Model).item;
Self.Fdescricao         := TModelERPosduplicata(Model).descricao;
Self.Fnum_serie         := TModelERPosduplicata(Model).num_serie;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPosduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPosduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPosduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPosduplicata.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPosduplicata.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPosduplicata.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPosduplicata.Setnum_serie(const Value: Boolean);   
begin                
  Fnum_serie := Value;   
end;                 


end.
