unit Model.ERP.c;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPc = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPc.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPc) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPc(Model).id;
Self.Fid_empresa         := TModelERPc(Model).id_empresa;
Self.Fnome         := TModelERPc(Model).nome;
Self.Fclick         := TModelERPc(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPc.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPc.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPc.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPc.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPc.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPc.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
