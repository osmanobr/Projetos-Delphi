unit Model.ERP.os;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPos = class(TModelBase)

private
    Fid : Integer;
    Fid_os : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fdata : TDateTime;
    Fquantidade : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_os(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setdata(const Value: TDateTime);
    procedure Setquantidade(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_os     : Integer read Fid_os write Setid_os;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property data     : TDateTime read Fdata write Setdata;
    property quantidade     : Double read Fquantidade write Setquantidade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPos(Model).id;
Self.Fid_os         := TModelERPos(Model).id_os;
Self.Fid_empresa         := TModelERPos(Model).id_empresa;
Self.Fnome         := TModelERPos(Model).nome;
Self.Fdata         := TModelERPos(Model).data;
Self.Fquantidade         := TModelERPos(Model).quantidade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPos.Setid_os(const Value: Boolean);   
begin                
  Fid_os := Value;   
end;                 

procedure TModelERPos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPos.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPos.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 


end.
