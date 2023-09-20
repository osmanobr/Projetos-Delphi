unit Model.ERP.comissao_cobrador;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaocobrador = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fde : indefinido;
    Fate : indefinido;
    Fpercentual : indefinido;
    Ftipo : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setde(const Value: indefinido);
    procedure Setate(const Value: indefinido);
    procedure Setpercentual(const Value: indefinido);
    procedure Settipo(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property de     : indefinido read Fde write Setde;
    property ate     : indefinido read Fate write Setate;
    property percentual     : indefinido read Fpercentual write Setpercentual;
    property tipo     : indefinido read Ftipo write Settipo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaocobrador.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaocobrador) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaocobrador(Model).id;
Self.Fid_empresa         := TModelERPcomissaocobrador(Model).id_empresa;
Self.Fde         := TModelERPcomissaocobrador(Model).de;
Self.Fate         := TModelERPcomissaocobrador(Model).ate;
Self.Fpercentual         := TModelERPcomissaocobrador(Model).percentual;
Self.Ftipo         := TModelERPcomissaocobrador(Model).tipo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaocobrador.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaocobrador.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaocobrador.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaocobrador.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomissaocobrador.Setde(const Value: Boolean);   
begin                
  Fde := Value;   
end;                 

procedure TModelERPcomissaocobrador.Setate(const Value: Boolean);   
begin                
  Fate := Value;   
end;                 

procedure TModelERPcomissaocobrador.Setpercentual(const Value: Boolean);   
begin                
  Fpercentual := Value;   
end;                 

procedure TModelERPcomissaocobrador.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 


end.
