unit Model.ERP.almoxarifado;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPalmoxarifado = class(TModelBase)

private
    Fid : Integer;
    Fid_produto_new : Integer;
    Fid_produto_old : Integer;
    Fdesc_new : WideString;
    Fdesc_old : WideString;
    Fid_venda : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_produto_new(const Value: Integer);
    procedure Setid_produto_old(const Value: Integer);
    procedure Setdesc_new(const Value: WideString);
    procedure Setdesc_old(const Value: WideString);
    procedure Setid_venda(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_produto_new     : Integer read Fid_produto_new write Setid_produto_new;
    property id_produto_old     : Integer read Fid_produto_old write Setid_produto_old;
    property desc_new     : WideString read Fdesc_new write Setdesc_new;
    property desc_old     : WideString read Fdesc_old write Setdesc_old;
    property id_venda     : Integer read Fid_venda write Setid_venda;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPalmoxarifado.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPalmoxarifado) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPalmoxarifado(Model).id;
Self.Fid_produto_new         := TModelERPalmoxarifado(Model).id_produto_new;
Self.Fid_produto_old         := TModelERPalmoxarifado(Model).id_produto_old;
Self.Fdesc_new         := TModelERPalmoxarifado(Model).desc_new;
Self.Fdesc_old         := TModelERPalmoxarifado(Model).desc_old;
Self.Fid_venda         := TModelERPalmoxarifado(Model).id_venda;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPalmoxarifado.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPalmoxarifado.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPalmoxarifado.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPalmoxarifado.Setid_produto_new(const Value: Boolean);   
begin                
  Fid_produto_new := Value;   
end;                 

procedure TModelERPalmoxarifado.Setid_produto_old(const Value: Boolean);   
begin                
  Fid_produto_old := Value;   
end;                 

procedure TModelERPalmoxarifado.Setdesc_new(const Value: Boolean);   
begin                
  Fdesc_new := Value;   
end;                 

procedure TModelERPalmoxarifado.Setdesc_old(const Value: Boolean);   
begin                
  Fdesc_old := Value;   
end;                 

procedure TModelERPalmoxarifado.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 


end.
