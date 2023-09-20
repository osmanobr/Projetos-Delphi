unit Model.ERP.carga_pdv;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcargapdv = class(TModelBase)

private
    Fid : Integer;
    Fmd5 : WideString;
    Ftotal : Boolean;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setmd5(const Value: WideString);
    procedure Settotal(const Value: Boolean);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property md5     : WideString read Fmd5 write Setmd5;
    property total     : Boolean read Ftotal write Settotal;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcargapdv.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcargapdv) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcargapdv(Model).id;
Self.Fmd5         := TModelERPcargapdv(Model).md5;
Self.Ftotal         := TModelERPcargapdv(Model).total;
Self.Fdatahora         := TModelERPcargapdv(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcargapdv.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcargapdv.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcargapdv.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcargapdv.Setmd5(const Value: Boolean);   
begin                
  Fmd5 := Value;   
end;                 

procedure TModelERPcargapdv.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPcargapdv.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
