unit Model.ERP.conta_receber_fixa_lote;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberfixalote = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_receber : Integer;
    Ftipo : Integer;
    Fdescricao : WideString;
    Fdatahora : indefinido;
    Fprocessado : Boolean;
    Fcancelado : Boolean;
    Fdbclick : Boolean;
    Fdata_processo : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Settipo(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);
    procedure Setprocessado(const Value: Boolean);
    procedure Setcancelado(const Value: Boolean);
    procedure Setdbclick(const Value: Boolean);
    procedure Setdata_processo(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property tipo     : Integer read Ftipo write Settipo;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property processado     : Boolean read Fprocessado write Setprocessado;
    property cancelado     : Boolean read Fcancelado write Setcancelado;
    property dbclick     : Boolean read Fdbclick write Setdbclick;
    property data_processo     : indefinido read Fdata_processo write Setdata_processo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberfixalote.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberfixalote) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberfixalote(Model).id;
Self.Fid_empresa         := TModelERPcontareceberfixalote(Model).id_empresa;
Self.Fid_conta_receber         := TModelERPcontareceberfixalote(Model).id_conta_receber;
Self.Ftipo         := TModelERPcontareceberfixalote(Model).tipo;
Self.Fdescricao         := TModelERPcontareceberfixalote(Model).descricao;
Self.Fdatahora         := TModelERPcontareceberfixalote(Model).datahora;
Self.Fprocessado         := TModelERPcontareceberfixalote(Model).processado;
Self.Fcancelado         := TModelERPcontareceberfixalote(Model).cancelado;
Self.Fdbclick         := TModelERPcontareceberfixalote(Model).dbclick;
Self.Fdata_processo         := TModelERPcontareceberfixalote(Model).data_processo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberfixalote.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberfixalote.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberfixalote.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setprocessado(const Value: Boolean);   
begin                
  Fprocessado := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setdbclick(const Value: Boolean);   
begin                
  Fdbclick := Value;   
end;                 

procedure TModelERPcontareceberfixalote.Setdata_processo(const Value: Boolean);   
begin                
  Fdata_processo := Value;   
end;                 


end.
