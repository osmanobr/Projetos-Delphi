unit Model.ERP.balanco_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbalancoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fmotivo : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbalancoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbalancoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbalancoitem(Model).id;
Self.Fid_empresa         := TModelERPbalancoitem(Model).id_empresa;
Self.Fdata         := TModelERPbalancoitem(Model).data;
Self.Fmotivo         := TModelERPbalancoitem(Model).motivo;
Self.Fid_usuario         := TModelERPbalancoitem(Model).id_usuario;
Self.Fclick         := TModelERPbalancoitem(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbalancoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbalancoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbalancoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbalancoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbalancoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPbalancoitem.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPbalancoitem.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPbalancoitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
