unit Model.ERP.pdv_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpdvitem = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Ftipo : indefinido;
    Fvalor : Double;
    Fobs : indefinido;
    Fid_pdvcaixa : Integer;
    Fid_forma : Integer;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Settipo(const Value: indefinido);
    procedure Setvalor(const Value: Double);
    procedure Setobs(const Value: indefinido);
    procedure Setid_pdvcaixa(const Value: Integer);
    procedure Setid_forma(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property tipo     : indefinido read Ftipo write Settipo;
    property valor     : Double read Fvalor write Setvalor;
    property obs     : indefinido read Fobs write Setobs;
    property id_pdvcaixa     : Integer read Fid_pdvcaixa write Setid_pdvcaixa;
    property id_forma     : Integer read Fid_forma write Setid_forma;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpdvitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpdvitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpdvitem(Model).id;
Self.Fdata         := TModelERPpdvitem(Model).data;
Self.Fid_caixa         := TModelERPpdvitem(Model).id_caixa;
Self.Fid_usuario         := TModelERPpdvitem(Model).id_usuario;
Self.Ftipo         := TModelERPpdvitem(Model).tipo;
Self.Fvalor         := TModelERPpdvitem(Model).valor;
Self.Fobs         := TModelERPpdvitem(Model).obs;
Self.Fid_pdvcaixa         := TModelERPpdvitem(Model).id_pdvcaixa;
Self.Fid_forma         := TModelERPpdvitem(Model).id_forma;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpdvitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpdvitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpdvitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpdvitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpdvitem.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPpdvitem.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpdvitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPpdvitem.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPpdvitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPpdvitem.Setid_pdvcaixa(const Value: Boolean);   
begin                
  Fid_pdvcaixa := Value;   
end;                 

procedure TModelERPpdvitem.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 


end.
