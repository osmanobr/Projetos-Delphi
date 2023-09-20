unit Model.ERP.promocao_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpromocaoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_usuario : Integer;
    Fid_grupo : Integer;
    Fid_fornecedor : Integer;
    Ftipo : indefinido;
    Fpercentual : Double;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_grupo(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Settipo(const Value: indefinido);
    procedure Setpercentual(const Value: Double);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property tipo     : indefinido read Ftipo write Settipo;
    property percentual     : Double read Fpercentual write Setpercentual;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpromocaoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpromocaoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpromocaoitem(Model).id;
Self.Fid_empresa         := TModelERPpromocaoitem(Model).id_empresa;
Self.Fdata         := TModelERPpromocaoitem(Model).data;
Self.Fid_usuario         := TModelERPpromocaoitem(Model).id_usuario;
Self.Fid_grupo         := TModelERPpromocaoitem(Model).id_grupo;
Self.Fid_fornecedor         := TModelERPpromocaoitem(Model).id_fornecedor;
Self.Ftipo         := TModelERPpromocaoitem(Model).tipo;
Self.Fpercentual         := TModelERPpromocaoitem(Model).percentual;
Self.Fclick         := TModelERPpromocaoitem(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpromocaoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpromocaoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpromocaoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpromocaoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpromocaoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpromocaoitem.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpromocaoitem.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPpromocaoitem.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPpromocaoitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPpromocaoitem.Setpercentual(const Value: Boolean);   
begin                
  Fpercentual := Value;   
end;                 

procedure TModelERPpromocaoitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
