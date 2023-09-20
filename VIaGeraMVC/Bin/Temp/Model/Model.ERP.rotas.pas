unit Model.ERP.romaneio_entrega_pedidos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPromaneioentregapedidos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : indefinido read Fnome write Setnome;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPromaneioentregapedidos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPromaneioentregapedidos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPromaneioentregapedidos(Model).id;
Self.Fid_empresa         := TModelERPromaneioentregapedidos(Model).id_empresa;
Self.Fnome         := TModelERPromaneioentregapedidos(Model).nome;
Self.Fclick         := TModelERPromaneioentregapedidos(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPromaneioentregapedidos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPromaneioentregapedidos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPromaneioentregapedidos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPromaneioentregapedidos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPromaneioentregapedidos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPromaneioentregapedidos.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
