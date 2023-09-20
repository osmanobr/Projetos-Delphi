unit Model.ERP.conta_receber_fixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberfixa = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_receber_fixa : Integer;
    Fid_vendedor : Integer;
    Fcomissao : Double;
    Fvalor : Double;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_conta_receber_fixa(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setcomissao(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_conta_receber_fixa     : Integer read Fid_conta_receber_fixa write Setid_conta_receber_fixa;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property comissao     : Double read Fcomissao write Setcomissao;
    property valor     : Double read Fvalor write Setvalor;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberfixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberfixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberfixa(Model).id;
Self.Fid_empresa         := TModelERPcontareceberfixa(Model).id_empresa;
Self.Fid_conta_receber_fixa         := TModelERPcontareceberfixa(Model).id_conta_receber_fixa;
Self.Fid_vendedor         := TModelERPcontareceberfixa(Model).id_vendedor;
Self.Fcomissao         := TModelERPcontareceberfixa(Model).comissao;
Self.Fvalor         := TModelERPcontareceberfixa(Model).valor;
Self.Fativo         := TModelERPcontareceberfixa(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberfixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberfixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberfixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberfixa.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontareceberfixa.Setid_conta_receber_fixa(const Value: Boolean);   
begin                
  Fid_conta_receber_fixa := Value;   
end;                 

procedure TModelERPcontareceberfixa.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPcontareceberfixa.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcontareceberfixa.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcontareceberfixa.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
