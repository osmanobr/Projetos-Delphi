unit Model.ERP.deptemp;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdeptemp = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_usuario : Integer;
    Fmotivo : WideString;
    Fid_conta_receber : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_conta : WideString;
    Fvl_total : Double;
    Fdata_vencto : TDateTime;
    Fid_forma : Integer;
    Fid_vendedor : Integer;
    Fclick : Boolean;
    Fdocumento : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_usuario(const Value: Integer);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setid_conta(const Value: WideString);
    procedure Setvl_total(const Value: Double);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setdocumento(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property click     : Boolean read Fclick write Setclick;
    property documento     : WideString read Fdocumento write Setdocumento;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdeptemp.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdeptemp) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdeptemp(Model).id;
Self.Fid_empresa         := TModelERPdeptemp(Model).id_empresa;
Self.Fdata         := TModelERPdeptemp(Model).data;
Self.Fid_usuario         := TModelERPdeptemp(Model).id_usuario;
Self.Fmotivo         := TModelERPdeptemp(Model).motivo;
Self.Fid_conta_receber         := TModelERPdeptemp(Model).id_conta_receber;
Self.Fid_cliente         := TModelERPdeptemp(Model).id_cliente;
Self.Fnome_cliente         := TModelERPdeptemp(Model).nome_cliente;
Self.Fid_conta         := TModelERPdeptemp(Model).id_conta;
Self.Fvl_total         := TModelERPdeptemp(Model).vl_total;
Self.Fdata_vencto         := TModelERPdeptemp(Model).data_vencto;
Self.Fid_forma         := TModelERPdeptemp(Model).id_forma;
Self.Fid_vendedor         := TModelERPdeptemp(Model).id_vendedor;
Self.Fclick         := TModelERPdeptemp(Model).click;
Self.Fdocumento         := TModelERPdeptemp(Model).documento;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdeptemp.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdeptemp.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdeptemp.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdeptemp.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdeptemp.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPdeptemp.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPdeptemp.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPdeptemp.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPdeptemp.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPdeptemp.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPdeptemp.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPdeptemp.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPdeptemp.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPdeptemp.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPdeptemp.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPdeptemp.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPdeptemp.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 


end.
