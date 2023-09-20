unit Model.ERP.venda_entrega;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaentrega = class(TModelBase)

private
    Fid : Integer;
    Flote : Integer;
    Fid_venda : Integer;
    Fid_entrega : Integer;
    Fdata : indefinido;
    Fentrega : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setlote(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_entrega(const Value: Integer);
    procedure Setdata(const Value: indefinido);
    procedure Setentrega(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property lote     : Integer read Flote write Setlote;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_entrega     : Integer read Fid_entrega write Setid_entrega;
    property data     : indefinido read Fdata write Setdata;
    property entrega     : Boolean read Fentrega write Setentrega;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaentrega.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaentrega) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaentrega(Model).id;
Self.Flote         := TModelERPvendaentrega(Model).lote;
Self.Fid_venda         := TModelERPvendaentrega(Model).id_venda;
Self.Fid_entrega         := TModelERPvendaentrega(Model).id_entrega;
Self.Fdata         := TModelERPvendaentrega(Model).data;
Self.Fentrega         := TModelERPvendaentrega(Model).entrega;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaentrega.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaentrega.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaentrega.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaentrega.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPvendaentrega.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaentrega.Setid_entrega(const Value: Boolean);   
begin                
  Fid_entrega := Value;   
end;                 

procedure TModelERPvendaentrega.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPvendaentrega.Setentrega(const Value: Boolean);   
begin                
  Fentrega := Value;   
end;                 


end.
