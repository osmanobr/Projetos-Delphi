unit Model.ERP.romaneio_entrega;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPromaneioentrega = class(TModelBase)

private
    Fid : Integer;
    Fid_romaneio : Integer;
    Fid_venda : Integer;
    Fid_venda_novo : Integer;
    Fdata : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_romaneio(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_venda_novo(const Value: Integer);
    procedure Setdata(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_romaneio     : Integer read Fid_romaneio write Setid_romaneio;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_venda_novo     : Integer read Fid_venda_novo write Setid_venda_novo;
    property data     : indefinido read Fdata write Setdata;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPromaneioentrega.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPromaneioentrega) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPromaneioentrega(Model).id;
Self.Fid_romaneio         := TModelERPromaneioentrega(Model).id_romaneio;
Self.Fid_venda         := TModelERPromaneioentrega(Model).id_venda;
Self.Fid_venda_novo         := TModelERPromaneioentrega(Model).id_venda_novo;
Self.Fdata         := TModelERPromaneioentrega(Model).data;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPromaneioentrega.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPromaneioentrega.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPromaneioentrega.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPromaneioentrega.Setid_romaneio(const Value: Boolean);   
begin                
  Fid_romaneio := Value;   
end;                 

procedure TModelERPromaneioentrega.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPromaneioentrega.Setid_venda_novo(const Value: Boolean);   
begin                
  Fid_venda_novo := Value;   
end;                 

procedure TModelERPromaneioentrega.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 


end.
