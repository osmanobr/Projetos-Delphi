unit Model.ERP.controle_nfce;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontrolenfce = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Flote : WideString;
    Fvalidade : TDateTime;
    Fencerrado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setlote(const Value: WideString);
    procedure Setvalidade(const Value: TDateTime);
    procedure Setencerrado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property lote     : WideString read Flote write Setlote;
    property validade     : TDateTime read Fvalidade write Setvalidade;
    property encerrado     : Boolean read Fencerrado write Setencerrado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontrolenfce.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontrolenfce) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontrolenfce(Model).id;
Self.Fid_produto         := TModelERPcontrolenfce(Model).id_produto;
Self.Flote         := TModelERPcontrolenfce(Model).lote;
Self.Fvalidade         := TModelERPcontrolenfce(Model).validade;
Self.Fencerrado         := TModelERPcontrolenfce(Model).encerrado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontrolenfce.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontrolenfce.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontrolenfce.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontrolenfce.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcontrolenfce.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPcontrolenfce.Setvalidade(const Value: Boolean);   
begin                
  Fvalidade := Value;   
end;                 

procedure TModelERPcontrolenfce.Setencerrado(const Value: Boolean);   
begin                
  Fencerrado := Value;   
end;                 


end.
