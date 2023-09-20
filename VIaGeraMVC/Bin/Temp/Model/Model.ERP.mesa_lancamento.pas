unit Model.ERP.mesa_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesaitem = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Ftipo : WideString;
    Fvalor : Double;
    Fobs : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Settipo(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setobs(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property tipo     : WideString read Ftipo write Settipo;
    property valor     : Double read Fvalor write Setvalor;
    property obs     : WideString read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesaitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesaitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesaitem(Model).id;
Self.Fdata         := TModelERPmesaitem(Model).data;
Self.Fid_caixa         := TModelERPmesaitem(Model).id_caixa;
Self.Fid_usuario         := TModelERPmesaitem(Model).id_usuario;
Self.Ftipo         := TModelERPmesaitem(Model).tipo;
Self.Fvalor         := TModelERPmesaitem(Model).valor;
Self.Fobs         := TModelERPmesaitem(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesaitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesaitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesaitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesaitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmesaitem.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPmesaitem.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPmesaitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPmesaitem.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmesaitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
