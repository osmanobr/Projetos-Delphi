unit Model.ERP.cartao_tef;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcartaotef = class(TModelBase)

private
    Fid : Integer;
    Fid_custodia_conta_receber : Integer;
    Fid_custodia_cheque_recebido : Integer;
    Fid_custodia_cheque_emitido : Integer;
    Fid_registro : Integer;
    Fclick : Boolean;
    Fid_custodia_contas_pagar : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_custodia_conta_receber(const Value: Integer);
    procedure Setid_custodia_cheque_recebido(const Value: Integer);
    procedure Setid_custodia_cheque_emitido(const Value: Integer);
    procedure Setid_registro(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setid_custodia_contas_pagar(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_custodia_conta_receber     : Integer read Fid_custodia_conta_receber write Setid_custodia_conta_receber;
    property id_custodia_cheque_recebido     : Integer read Fid_custodia_cheque_recebido write Setid_custodia_cheque_recebido;
    property id_custodia_cheque_emitido     : Integer read Fid_custodia_cheque_emitido write Setid_custodia_cheque_emitido;
    property id_registro     : Integer read Fid_registro write Setid_registro;
    property click     : Boolean read Fclick write Setclick;
    property id_custodia_contas_pagar     : Integer read Fid_custodia_contas_pagar write Setid_custodia_contas_pagar;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcartaotef.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcartaotef) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcartaotef(Model).id;
Self.Fid_custodia_conta_receber         := TModelERPcartaotef(Model).id_custodia_conta_receber;
Self.Fid_custodia_cheque_recebido         := TModelERPcartaotef(Model).id_custodia_cheque_recebido;
Self.Fid_custodia_cheque_emitido         := TModelERPcartaotef(Model).id_custodia_cheque_emitido;
Self.Fid_registro         := TModelERPcartaotef(Model).id_registro;
Self.Fclick         := TModelERPcartaotef(Model).click;
Self.Fid_custodia_contas_pagar         := TModelERPcartaotef(Model).id_custodia_contas_pagar;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcartaotef.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcartaotef.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcartaotef.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcartaotef.Setid_custodia_conta_receber(const Value: Boolean);   
begin                
  Fid_custodia_conta_receber := Value;   
end;                 

procedure TModelERPcartaotef.Setid_custodia_cheque_recebido(const Value: Boolean);   
begin                
  Fid_custodia_cheque_recebido := Value;   
end;                 

procedure TModelERPcartaotef.Setid_custodia_cheque_emitido(const Value: Boolean);   
begin                
  Fid_custodia_cheque_emitido := Value;   
end;                 

procedure TModelERPcartaotef.Setid_registro(const Value: Boolean);   
begin                
  Fid_registro := Value;   
end;                 

procedure TModelERPcartaotef.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcartaotef.Setid_custodia_contas_pagar(const Value: Boolean);   
begin                
  Fid_custodia_contas_pagar := Value;   
end;                 


end.
