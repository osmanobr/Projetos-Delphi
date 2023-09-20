unit Model.ERP.venda_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_venda : Integer;
    Fid_venda_item : Integer;
    Fdescricao_item : indefinido;
    Fdata_alteracao : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setdescricao_item(const Value: indefinido);
    procedure Setdata_alteracao(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property descricao_item     : indefinido read Fdescricao_item write Setdescricao_item;
    property data_alteracao     : TDateTime read Fdata_alteracao write Setdata_alteracao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaitem(Model).id;
Self.Fid_empresa         := TModelERPvendaitem(Model).id_empresa;
Self.Fid_venda         := TModelERPvendaitem(Model).id_venda;
Self.Fid_venda_item         := TModelERPvendaitem(Model).id_venda_item;
Self.Fdescricao_item         := TModelERPvendaitem(Model).descricao_item;
Self.Fdata_alteracao         := TModelERPvendaitem(Model).data_alteracao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvendaitem.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaitem.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPvendaitem.Setdescricao_item(const Value: Boolean);   
begin                
  Fdescricao_item := Value;   
end;                 

procedure TModelERPvendaitem.Setdata_alteracao(const Value: Boolean);   
begin                
  Fdata_alteracao := Value;   
end;                 


end.
