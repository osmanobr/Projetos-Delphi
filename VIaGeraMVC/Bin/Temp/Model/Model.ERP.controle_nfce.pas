unit Model.ERP.controle_nf;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontrolenf = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fnfce : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setnfce(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property nfce     : WideString read Fnfce write Setnfce;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontrolenf.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontrolenf) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontrolenf(Model).id;
Self.Fid_venda         := TModelERPcontrolenf(Model).id_venda;
Self.Fnfce         := TModelERPcontrolenf(Model).nfce;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontrolenf.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontrolenf.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontrolenf.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontrolenf.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPcontrolenf.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 


end.
