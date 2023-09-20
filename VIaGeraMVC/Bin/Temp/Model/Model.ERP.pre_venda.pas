unit Model.ERP.prazos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprazos = class(TModelBase)

private
    Fid : Integer;
    Fid_usuario : Integer;
    Fmaquina : indefinido;
    Fvenda : indefinido;
    Fdata : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setmaquina(const Value: indefinido);
    procedure Setvenda(const Value: indefinido);
    procedure Setdata(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property maquina     : indefinido read Fmaquina write Setmaquina;
    property venda     : indefinido read Fvenda write Setvenda;
    property data     : indefinido read Fdata write Setdata;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprazos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprazos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprazos(Model).id;
Self.Fid_usuario         := TModelERPprazos(Model).id_usuario;
Self.Fmaquina         := TModelERPprazos(Model).maquina;
Self.Fvenda         := TModelERPprazos(Model).venda;
Self.Fdata         := TModelERPprazos(Model).data;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprazos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprazos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprazos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprazos.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPprazos.Setmaquina(const Value: Boolean);   
begin                
  Fmaquina := Value;   
end;                 

procedure TModelERPprazos.Setvenda(const Value: Boolean);   
begin                
  Fvenda := Value;   
end;                 

procedure TModelERPprazos.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 


end.
