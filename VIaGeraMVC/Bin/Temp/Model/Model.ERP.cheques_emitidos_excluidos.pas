unit Model.ERP.cheque_recebido_custodia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPchequerecebidocustodia = class(TModelBase)

private
    Fid : Integer;
    Fid_cheques_emitidos : Integer;
    Fid_cliser : Integer;
    Faplicado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_cheques_emitidos(const Value: Integer);
    procedure Setid_cliser(const Value: Integer);
    procedure Setaplicado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_cheques_emitidos     : Integer read Fid_cheques_emitidos write Setid_cheques_emitidos;
    property id_cliser     : Integer read Fid_cliser write Setid_cliser;
    property aplicado     : Boolean read Faplicado write Setaplicado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPchequerecebidocustodia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPchequerecebidocustodia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPchequerecebidocustodia(Model).id;
Self.Fid_cheques_emitidos         := TModelERPchequerecebidocustodia(Model).id_cheques_emitidos;
Self.Fid_cliser         := TModelERPchequerecebidocustodia(Model).id_cliser;
Self.Faplicado         := TModelERPchequerecebidocustodia(Model).aplicado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPchequerecebidocustodia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPchequerecebidocustodia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPchequerecebidocustodia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPchequerecebidocustodia.Setid_cheques_emitidos(const Value: Boolean);   
begin                
  Fid_cheques_emitidos := Value;   
end;                 

procedure TModelERPchequerecebidocustodia.Setid_cliser(const Value: Boolean);   
begin                
  Fid_cliser := Value;   
end;                 

procedure TModelERPchequerecebidocustodia.Setaplicado(const Value: Boolean);   
begin                
  Faplicado := Value;   
end;                 


end.
