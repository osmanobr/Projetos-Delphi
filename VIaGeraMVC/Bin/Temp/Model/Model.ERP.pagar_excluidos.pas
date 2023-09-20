unit Model.ERP.paf_r;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpafr = class(TModelBase)

private
    Fid : Integer;
    Fid_conta_pagar : Integer;
    Fid_cliser : Integer;
    Faplicado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_conta_pagar(const Value: Integer);
    procedure Setid_cliser(const Value: Integer);
    procedure Setaplicado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_conta_pagar     : Integer read Fid_conta_pagar write Setid_conta_pagar;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property aplicado     : Boolean read Faplicado write Setaplicado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpafr.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpafr) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpafr(Model).id;
Self.Fid_conta_pagar         := TModelERPpafr(Model).id_conta_pagar;
Self.Fid_cliser         := TModelERPpafr(Model).id_cliser;
Self.Faplicado         := TModelERPpafr(Model).aplicado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpafr.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpafr.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpafr.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpafr.Setid_conta_pagar(const Value: Boolean);   
begin                
  Fid_conta_pagar := Value;   
end;                 

procedure TModelERPpafr.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPpafr.Setaplicado(const Value: Boolean);   
begin                
  Faplicado := Value;   
end;                 


end.
